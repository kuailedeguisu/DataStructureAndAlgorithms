#include <stdio.h>

int f(int x);
int bad(unsigned int n);

int main()
{
    printf("f(5)=%d\n", f(5));
    unsigned a = 10;
    printf("bad(10)=%d\n", bad(a));
    return 0;
}

int f(int x)
{
    if (x == 0)
    {
        return 0;
    }
    else
    {
        return 2 * f(x - 1) + x * x;
    }
}

int bad(unsigned int n)
{
    if (n == 1)
    {
        return 0;
    }
    else
    {
        return bad( n / 3 + 1) + n - 1;
    }
    
}