/*
 * @Author: Leaf(2064944038@qq.com)
 * @Version: V1.0
 * @Date: 2024-03-20 23:06:16
 * @Description:
 */
#include "KVEngine/KVEngine.h"
#include <iostream>
#include <string>
using namespace KV;
int main(int, char **) {
  std::cout << "Hello, from KVEngine!\n";
  KVEngine<int, std::string> kv;
  for (int i = 0; i < 10; ++i)
    kv.put(i, std::to_string(i));
  std::cout << "max_level_: " << kv.get_max_level() << std::endl;
  std::cout << "GetValue:\n";
  for (int i = 0; i < 10; ++i) {
    std::string res;
    if (kv.get(i, &res))
      std::cout << res << " ";
  }
  std::cout << "\n";
  for (int i = 0; i < 10; i += 2) {
    kv.del(i);
  }
  for (int i = 0; i < 10; ++i) {
    std::string res;
    if (kv.get(i, &res))
      std::cout << res << " ";
  }
}
