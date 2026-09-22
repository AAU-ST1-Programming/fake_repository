#include <assert.h>

#include "math_utils.h"

int main(void) {
    assert(add(2, 3) == 5);
    assert(add(-2, 2) == 0);

    assert(subtract(8, 3) == 5);
    assert(subtract(3, 8) == -5);

    assert(multiply(4, 5) == 20);
    assert(multiply(-4, 5) == -20);
    assert(multiply(0, 99) == 0);
    assert(multiply(-4, -5) == 20);

    return 0;
}
