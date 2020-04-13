#include "maxsubseqsum.h"

int max_sub_seq_sum1(const int arr[], int n)
{
    int this_sum, max_sum, i, j, k;
    max_sum = 0;
    for (i = 0; i < n; i++)
    {
        for (j = i; j < n; j++)
        {
            this_sum = 0;
            for (k = i; k <= j; k++)
            {
                this_sum += arr[k];
            }
            if (this_sum > max_sum)
            {
                max_sum = this_sum;
            }
        }
    }
    return max_sum;
}

int max_sub_seq_sum2(const int arr[], int n)
{
    int this_sum, max_sum, i, j;
    max_sum = 0;
    for (i = 0; i < n; i++)
    {
        this_sum = 0;
        for (j = i; j < n; j++)
        {
            this_sum += arr[j];
            if (this_sum > max_sum)
            {
                max_sum = this_sum;
            }
        }
    }
    return max_sum;
}

static int max_sub_sum(const int arr[], int left, int right)
{
    int max_left_sum, max_right_sum;
    int max_left_border_sum, max_right_border_sum;
    int left_border_sum, right_border_sum;
    int center, i;

    if (left == right)
    {
        if (arr[left] > 0)
        {
            return arr[left];
        }
        else
        {
            return 0;
        }
    }

    center = (left + right) / 2;
    max_left_sum = max_sub_sum(arr, left, center);
    max_right_sum = max_sub_sum(arr, center + 1, right);
    max_left_border_sum = 0;
    left_border_sum = 0;
    for (i = center; i >= left; i--)
    {
        left_border_sum += arr[i];
        if (left_border_sum > max_left_border_sum)
        {
            max_left_border_sum = left_border_sum;
        }
    }
    max_right_border_sum = 0;
    right_border_sum = 0;
    for (i = center + 1; i <= right; i++)
    {
        right_border_sum += arr[i];
        if (right_border_sum > max_right_border_sum)
        {
            max_right_border_sum = right_border_sum;
        }
    }
    return max3(max_left_sum, max_right_sum,
        max_left_border_sum + max_right_border_sum);
}

int max3(int a, int b, int c)
{
    int big;
    big = (a > b) ? a : b;
    big = (c > big) ? c : big;
    return big;
}

int max_sub_seq_sum3(const int arr[], int n)
{
    return max_sub_sum(arr, 0, n - 1);
}

int max_sub_seq_sum4(const int arr[], int n)
{
    int this_sum, max_sum, i;
    this_sum = max_sum = 0;
    for (i = 0; i < n; i++)
    {
        this_sum += arr[i];
        if (this_sum > max_sum)
        {
            max_sum = this_sum;
        }
        else if (this_sum < 0)
        {
            this_sum = 0;
        }
        
    }
    return max_sum;
}