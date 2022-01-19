#include <stdio.h>

long long mybyteor(long long); // external declaration

int main()
{
    printf("mybyteor(0x1122ABCD)=%11llx\n", mybyteor(0x1122ABCD));
}
