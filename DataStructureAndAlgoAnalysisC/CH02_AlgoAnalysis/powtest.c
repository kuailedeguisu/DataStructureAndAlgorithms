#include <stdio.h>
#include "pow.h"

int main()
{
    unsigned power;
    long base;
    printf("Please enter two integer:");
    scanf("%ld %u", &base, &power);
    printf("pow=%ld\n", mypow(base, power));
    return 0;
}