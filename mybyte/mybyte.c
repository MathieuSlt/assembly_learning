#include <stdio.h>

long long mybyte(long long); // external declaration

int main()
{
    printf("mybyte(0xABCD)=%llx\n", mybyte(0xABCD));
}
