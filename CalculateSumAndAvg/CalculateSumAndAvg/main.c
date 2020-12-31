#include <stdio.h>

#define SZ 7

extern int GetSum(int* arr, int sz);
extern int GetAvg(int sum, int sz);
extern int* GetSumAndAvg(int* arr, int sz);

int main(void)
{
	int arr[SZ] = { 10,20,30,40,50, 60, 70 };
	int sum, avg;
	sum = GetSum(&arr, SZ);
	avg = GetAvg(sum, SZ);

	int* sum_avg = GetSumAndAvg(&arr, SZ);

	printf("sum: %3d\navg: %3d\n", sum, avg);
	printf("sum_avg[0:sum]: %3d\nsum_avg[1:avg]: %3d\n", sum_avg[0], sum_avg[1]);

	return 0;
}