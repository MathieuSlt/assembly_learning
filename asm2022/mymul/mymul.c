#include <stdio.h>

typedef struct
{
    unsigned long long high;
    unsigned long long low;
} resmul;

void mymul(unsigned long long, unsigned long long, resmul *res);

int main()
{
    resmul res;

    mymul(3, 6, &res);
    printf("\t\t\tmymul(3, 6); res.high=0x%llx, res.low=0x%llx\n", res.high,
           res.low);
    printf("result should be:\tmymul(3, 6); res.high=0x0, res.low=0x12\n");

    mymul(0x1000000000000000, 0x4, &res);
    printf("\n\t\t\tmymul(0x1000000000000000, 4); res.high=0x%llx, "
           "res.low=0x%llx\n",
           res.high, res.low);
    printf("result should be:\tmymul(0x1000000000000000, 4); res.high=0x0, "
           "res.low=0x4000000000000000\n");

    mymul(0x1000000000000000, 0x10, &res);
    printf("\n\t\t\tmymul(0x1000000000000000, 0x10); res.high=0x%llx, "
           "res.low=0x%llx\n",
           res.high, res.low);
    printf("result should be:\tmymul(0x1000000000000000, 0x10); res.high=0x1, "
           "res.low=0x0\n");

    return 0;
}
