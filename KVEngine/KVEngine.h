/*
 * @Author       : Leaf(2064944038@qq.com)
 * @Version      : V1.0
 * @Date         : 2024-03-20 23:08:02
 * @Description  :
 */
#pragma once

#include <cstdlib>
#include <memory>
#include <mutex>
#include <vector>
namespace KV {
#define MAX_LEVEL 32
#define KV_LEVEL_P RAND_MAX / 4
template <typename Key, typename Value> class KVEngine {
  struct Node {
    Node(Key k, Value v, int level) : key_(k), value_(v), level_(level) {
      next_.resize(level + 1);
    }
    Node(int level) { next_.resize(level); }
    Key key_;
    Value value_;
    int level_;
    std::vector<std::shared_ptr<Node>> next_;
  };

  inline int rand_level() {
    int level = 0;
    auto r = rand();
    while (rand() < KV_LEVEL_P && level < MAX_LEVEL) {
      ++level;
    }
    max_level_ = std::max(max_level_, level);
    return level;
  }
  inline std::vector<std::shared_ptr<Node>> get_prev_node(Key k) {
    std::vector<std::shared_ptr<Node>> prev(MAX_LEVEL);
    auto cur = header_;
    for (int i = max_level_; i >= 0; --i) {
      while (cur->next_[i] && cur->next_[i]->key_ < k) {
        cur = cur->next_[i];
      }
      prev[i] = cur;
    }
    return prev;
  }

public:
  KVEngine() : max_level_(0), header_(std::make_shared<Node>(MAX_LEVEL)) {}
  bool get(Key k, Value *result);
  bool put(Key k, Value v);
  void del(Key k);
  void store();
  void load();
  inline int get_max_level() { return max_level_; }

private:
  int max_level_;
  std::shared_ptr<Node> header_;
  std::mutex lock_;
};

template <typename Key, typename Value>
bool KVEngine<Key, Value>::get(Key k, Value *result) {
  auto node = get_prev_node(k)[0]->next_[0];
  if (node && node->key_ == k) {
    *result = node->value_;
    return true;
  }
  return false;
}

template <typename Key, typename Value>
/**
 * @description:
 * @param {Key} k
 * @param {Value} v
 * @return false if there has already exist this key.
 */
bool KVEngine<Key, Value>::put(Key k, Value v) {
  int level = rand_level();
  auto prev = get_prev_node(k);
  if (prev[0]->next_[0] && prev[0]->next_[0]->key_ == k)
    return false;

  auto node = std::make_shared<Node>(k, v, level);
  for (int i = level; i >= 0; --i) {
    node->next_[i] = prev[i]->next_[i];
    prev[i]->next_[i] = node;
  }
  return true;
}

template <typename Key, typename Value> void KVEngine<Key, Value>::del(Key k) {
  auto prev = get_prev_node(k);
  if (!prev[0]->next_[0] || prev[0]->next_[0]->key_ != k) {
    return;
  }
  auto node = prev[0]->next_[0];
  for (int i = max_level_; i >= 0; --i) {
    if (prev[i]->next_[i] == node) {
      prev[i]->next_[i] = node->next_[i];
    }
  }
  if (max_level_ > 0 && !header_->next_[max_level_]) {
    --max_level_;
  }
}

template <typename Key, typename Value> void KVEngine<Key, Value>::store() {}

template <typename Key, typename Value> void KVEngine<Key, Value>::load() {}

} // namespace KV