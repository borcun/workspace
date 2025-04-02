#ifndef ARITHMETIC_H
#define ARITHMETIC_H

#include <iostream>

class Arithmetic {
public:
  Arithmetic() = default;
  virtual ~Arithmetic() = default;
  int sum(const int x, const int y);
  int sub(const int x, const int y);
  int mul(const int x, const int y);
  int div(const int x, const int y);
};

#endif
