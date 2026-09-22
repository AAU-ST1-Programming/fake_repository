#include <stdio.h>

#include "math_utils.h"

int main(void) {
    int a = 6;
    int b = 3;

    printf("add(%d, %d) = %d\n", a, b, add(a, b));
    printf("subtract(%d, %d) = %d\n", a, b, subtract(a, b));
    printf("multiply(%d, %d) = %d\n", a, b, multiply(a, b));

    return 0;
}
