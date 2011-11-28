#include <stdio.h>
#include <stdint.h>

int main() {
    int32_t *i;
    int32_t result = 0;
    int32_t mem[8] = {1,1,1,1}; // it is not correct here, because we should move address of this array
    int32_t *memarray = mem;

// extern int32_t *i;
// extern int32_t result;
// extern int32_t *memarray;

    i = memarray + 400/sizeof(int32_t);
    int32_t temp;
loop:
    temp = mem[0];
    result += temp;
    temp = mem[4/sizeof(int32_t)];
    result += temp;
    memarray += 8/sizeof(int32_t);
    if(i != memarray) {
        goto loop;
    }
    // it simplifies to just
    int j;
    for(j = 0; j < 100; j++) {
        result += mem[i];
    }
    return 0;
}
