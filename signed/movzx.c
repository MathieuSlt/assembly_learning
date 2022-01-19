#include <stdio.h>

unsigned int movzx(unsigned short); // external declaration

int count_bits(unsigned x)
{
    int bits = 0;
    while (x)
    {
        if (x & 1U)
            bits++;
        x >>= 1;
    }
    return bits;
}

int int_bits(void)
{
    return count_bits(~0U);
}

void print_nbits(unsigned x, unsigned n)
{
    int i = int_bits();
    i = (n < i) ? n - 1 : i - 1;
    for (; i >= 0; i--)
        putchar(((x >> i) & 1U) ? '1' : '0');
}

int main(void)
{
    unsigned short i = 10;

    print_nbits(i, 16);
    printf("\n");
    print_nbits(movzx(i), 16);
    printf("\n");

    return 0;
}
// int main()
// {
//     long long a = 0xABCD;
//     printf("size in: %ld\n", sizeof(a));
//     printf("movsx(0xABCD) = %llx\n", movzx(a));
//     printf("size out: %ld\n", sizeof(movzx(a)));
// }
