#include <stdio.h>

int addOneByValue(int x) {
  return (x + 1);
}

void addOneByReference(int *x) {
  *x = *x + 1;
}

void main() {
  int n = 20;
  int nplus1 = addOneByValue(n);
  printf("n is %d and nplus1 is %d\n", n, nplus1);
  addOneByReference(&n);
  printf("now n is %d and nplus1 is %d\n", n, nplus1);
}