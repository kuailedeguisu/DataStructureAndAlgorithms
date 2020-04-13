#include <stdio.h>

long fib_recur(int n);
long fib_iter(int n);


int main()
{
    int n = 10;
    printf("%ld\n", fib_recur(n));
    printf("%ld\n", fib_iter(n));
    return 0;
}

long fib_recur(int n)
{
    if (n <= 2)
    {
        return 1;
    }
    else
    {
        return fib_recur(n - 1) + fib_recur(n - 2);
    }
    
}
long fib_iter(int n)
{
    
    int num1 = 1;
    int num2 = 1;
    int temp = 0;
    int i = 0;
    if (n < 3)
    {
        return 1;
    }
    else
    {
        for (i = 1; i <= n - 2; i++)
        {
            temp = num1 + num2;
            num1 = num2;
            num2 = temp;
        }
        return temp;
    }
    
}