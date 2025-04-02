#include <iostream>
#include "arithmetic.h"
#include "gtest/gtest.h"

Arithmetic arithmetic;

TEST(SumTest, ForPositiveNumbers) {
  EXPECT_EQ(14, arithmetic.sum(10, 4));
}

TEST(SubTest, ForPositiveNumbers) {
  EXPECT_EQ(6, arithmetic.sub(10, 4));
}

TEST(MulTest, ForPositiveNumbers) {
  EXPECT_EQ(40, arithmetic.mul(10, 4));
}

TEST(DivTest, ForPositiveNumbers) {
  EXPECT_FLOAT_EQ(2.5f, arithmetic.div(10, 4));
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
