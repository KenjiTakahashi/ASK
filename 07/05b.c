#include <stdio.h>

int count(int *a, int n, int x) {
    int res = 0;
    int *p = 0;
    for(p = a; p != a + n; p++) {
        if(*p == x) {
            res += 1;
        }
    }
    return res;
}

int main() {
    int p[] = {1, 2, 3, 4};
    printf("%d\n", count(p, 4, 2));
    return 0;
}
