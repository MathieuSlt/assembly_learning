#include <stdio.h>

long long xor (long long, long long); // external declaration

int main()
{
    printf("xor(0xABCD, 0xABCE) = %llx\n", xor(0xABCD, 0xABCE));
}
