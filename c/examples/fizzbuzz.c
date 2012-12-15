#include <stdio.h>

void main () {
    int i;
    for (int i = 1; i <= 100; i++) {
        if (!(i % 15))
            printf("FizzBuzz\n");
        else if (!(i % 3))
            printf("Fizz\n");
        else if (!(i % 5))
            printf("Buzz\n");
        else
            printf("%d\n", i);
    }
}