#include "binarysearch.h"
// O(logN)
int binary_search(const int arr[], int target, int len)
{
    int low = 0, high = len - 1, mid;
    while (low <= high)
    {
        mid = (low + high) / 2;
        if (target > arr[mid])
        {
            low = mid + 1;
        }
        else if (target < arr[mid])
        {
            high = mid - 1;
        }
        else
        {
            return mid;
        }
    }
    return -1;
}