#include <stdio.h>

long long mybyteorwithoutor(long long); // external declaration

int main()
{
    printf("mybyteorwithoutor(0x1122ABCD)=%11llx\n",
           mybyteorwithoutor(0x1122ABCD));
}
