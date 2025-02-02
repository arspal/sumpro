#include "stdlib.h"
#include "stdio.h"
#include "string.h"

const char *single_digit[]= { "ноль", "один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девять" };

int main(int argc, char *argv[]) {
  if (argc != 2) {
    return 1;
  }

  char *input = argv[1];
  int input_length = strlen(input);

  if (input_length > 1) {
    return 1;
  }

  // TODO: Handle invalid conversions
  const int digit = atoi(input);
  printf("%s\n", single_digit[digit]);
  return 0;
}
