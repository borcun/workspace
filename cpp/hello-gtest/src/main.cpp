#include "arithmetic.h"

int main() {
  Arithmetic aritmethic;

  std::cout << "sum result: " << aritmethic.sum(10, 4) << std::endl;
  std::cout << "sum result: " << aritmethic.sub(10, 4) << std::endl;
  std::cout << "sum result: " << aritmethic.mul(10, 4) << std::endl;
  std::cout << "sum result: " << aritmethic.div(10, 4) << std::endl;
  
  return 0;
}
