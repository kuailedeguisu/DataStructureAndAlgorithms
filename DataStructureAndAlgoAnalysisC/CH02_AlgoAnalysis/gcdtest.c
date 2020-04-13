#include <stdio.h>
#include "gcd.h"

int main()
{
    unsigned int m, n;
    printf("Please enter two integers:");
    scanf("%u %u", &m, &n);
    printf("gcd=%u\n", gcd(m, n));
    unsigned int num;
    printf("Please enter the maximum integer:");
    scanf("%u", &num);
    printf("percent=%f\n", percent_of_prime_number(num));
    return 0;
}