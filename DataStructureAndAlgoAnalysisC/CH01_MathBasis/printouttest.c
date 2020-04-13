#include <stdio.h>

void print_out(unsigned int n);
void print_digit(unsigned int n);

int main()
{
    unsigned int n = 76539;
    print_out(n);
    printf("\n");
    return 0;
}

void print_out(unsigned int n)
{
    if (n >= 10)
    {
        print_out(n / 10);
    }
    print_digit(n % 10);
}

void print_digit(unsigned int n)
{
    printf("%u", n);
}