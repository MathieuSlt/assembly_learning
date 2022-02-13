#include <stdio.h>

long long myitoa(char *s);

int main()
{
    printf("myitoa(\"5\")=%lli\n", myitoa("5")); // 5
    printf("myitoa(\"25\")=%lli\n", myitoa("25")); // 25
    printf("myitoa(\"2925\")=%lli\n", myitoa("2925")); // 25

    printf("myitoa(\"-5\")=%lli\n", myitoa("-5")); // -5
    printf("myitoa(\"-18\")=%lli\n", myitoa("-18")); // -18
    printf("myitoa(\"-1887\")=%lli\n", myitoa("-1887")); // -1887

    printf("myitoa(\"0\")=%lli\n", myitoa("0")); // 0
}
