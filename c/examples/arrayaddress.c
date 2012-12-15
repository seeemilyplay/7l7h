#include <stdio.h>

void main() {
  char c[3] = {'a', 'b', 'c'};
  printf("c[0] value is %c, address is %p\n", c[0], &c[0]);
  printf("c[1] value is %c, address is %p\n", c[1], &c[1]);
  printf("c[2] value is %c, address is %p\n", c[2], &c[2]);
}