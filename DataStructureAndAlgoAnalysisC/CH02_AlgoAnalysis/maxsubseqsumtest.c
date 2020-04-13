#include <stdio.h>
#include "maxsubseqsum.h"

int main()
{
    int arr[] = {-2, 11, -4, 13, -5, -2};
    int len = sizeof(arr)/sizeof(arr[0]);
    printf("result1=%d\n", max_sub_seq_sum1(arr, len));
    printf("result2=%d\n", max_sub_seq_sum2(arr, len));
    printf("result3=%d\n", max_sub_seq_sum3(arr, len));
    printf("result4=%d\n", max_sub_seq_sum4(arr, len));
    return 0;
}