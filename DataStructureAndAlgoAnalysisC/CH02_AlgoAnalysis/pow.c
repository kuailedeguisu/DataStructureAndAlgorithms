#include "pow.h"
// O(logN)
long mypow(long base, unsigned power)
{
    if (power == 0)
    {
        return 1;
    }
    if (power == 1)
    {
        return base;
    }
    if (is_even(power))
    {
        return mypow(base * base, power / 2);
    }
    else
    {
        return mypow(base * base, (power - 1) / 2) * base;
    }
}

int is_even(unsigned power)
{
    return power % 2 == 0;
}