#include <stdio.h>

void main() {
  char c = 'k';
  char *a = &c;
  printf("I stored value '%c' at address %p\n", *a, a);
}