#include <stdio.h>
#include "binarysearch.h"

int main()
{
    int arr[] = {1, 3, 6, 8, 10, 39};
    int len = sizeof(arr) / sizeof(arr[0]);
    printf("len=%d\n", len);
    printf("found result=%d\n", binary_search(arr, 39, len));
    printf("not found result=%d\n", binary_search(arr, 40, len));
    return 0;
}