#include "gcd.h"
// O(logN)
// 最后非零余数就是最大公约数
unsigned int gcd(unsigned int m, unsigned int n)
{
    unsigned int rem;
    while (n > 0)
    {
        rem = m % n;
        m = n;
        n = rem;
    }
    return m;
}

double percent_of_prime_number(unsigned int n)
{
    int rel = 0, tot = 0;
    int i, j;
    for (i = 1; i <= n; i++)
    {
        for (j = i + 1; j <= n; j++)
        {
            tot++;
            if (gcd(i, j) == 1)
            {
                rel++;
            }
        }
    }
    if (tot > 0)
    {
        return (double)rel / tot;
    }
    else
    {
        return 0.0;
    }
}