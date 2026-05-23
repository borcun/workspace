#include <stdio.h>
#include <stdbool.h>  // for bool type

// type definition for comparison function used during sorting
typedef bool (*compare_t)(const int, const int);

bool ascending(const int x, const int y) { return x > y; }
bool descending(const int x, const int y) { return x < y; }

/// @brief function that executes insertion sort algorithms
/// @param [in|out] arr - arr to be sorted
/// @param [in] size - size of array
/// @param [in] cmp - comparison function pointer
void sort(int *arr, const unsigned int size, compare_t cmp) {
    if (NULL == arr || 0 == size) {
	puts("could not sort array");
	return;
    }

    for (int i = 1; i < size; ++i) {
	int key = arr[i];  // element to be inserted into first part of the array
	int j = i - 1;     // from 0 to j is a slice referring to first part of the array

	// try to find index for key inside the slice shifting the bigger values than key rightside
	while (j >= 0 && cmp(arr[j], key)) {
	    arr[j + 1] = arr[j];
	    --j;
	}

	// when the above loop breaks, it means that key index is found, so put it there
	arr[j + 1] = key;
    }

    return;
}

int main() {
    const unsigned int size = 8U;
    int arr[size] = {7, 5, 2, 4, 1, 6, 3, 5};

    printf("%-18s : ", "Unsorted Array");
    for (int i = 0; i < size; ++i) { printf("%d ", arr[i]); }

    sort(arr, size, ascending);
    printf("\n%-18s : ", "Asc. Sorted Array");
    for (int i = 0; i < size; ++i) { printf("%d ", arr[i]); }

    sort(arr, size, descending);
    printf("\n%-18s : ", "Dec. Sorted Array");
    for (int i = 0; i < size; ++i) { printf("%d ", arr[i]); }

    puts("");
    
    return 0;
}
