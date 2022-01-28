
#include <stdio.h>

long long fibonnaci(long long);

int main()
{
    printf("fibonnaci(0)=%lli result should be 0\n", fibonnaci(0));
    printf("fibonnaci(1)=%lli result should be 1\n", fibonnaci(1));
    printf("fibonnaci(2)=%lli result should be 1\n", fibonnaci(2));
    printf("fibonnaci(3)=%lli result should be 2\n", fibonnaci(3));
    printf("fibonnaci(4)=%lli result should be 3\n", fibonnaci(4));
    printf("fibonnaci(5)=%lli result should be 5\n", fibonnaci(5));
    printf("fibonnaci(8)=%lli result should be 21\n", fibonnaci(8));
    printf("fibonnaci(-5)=%lli result should be -1\n", fibonnaci(-5));
    return 0;
}
