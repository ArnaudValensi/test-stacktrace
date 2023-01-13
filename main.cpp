#include <stdio.h>

// #pragma clang diagnostic push
// #pragma clang diagnostic ignored "-Wnull-dereference"

void function_two() {
  *((void **)0) = 0; // program crashes here
};

// #pragma clang diagnostic pop

void function_one() { function_two(); };

int main() {
  printf("Hello, World!\n");
  function_one();
  return 0;
}
