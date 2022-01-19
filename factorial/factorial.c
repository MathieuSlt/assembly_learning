#include <stdio.h>

int factorial(int); // external declaration

int main()
{
    printf("factorial(5)=%d, should be 120\n", factorial(5));
    printf("factorial(10)=%d, should be 3628800\n", factorial(10));
    printf("factorial(0)=%d, should be 1\n", factorial(0));
    printf("factorial(1)=%d, should be 1\n", factorial(1));
}
