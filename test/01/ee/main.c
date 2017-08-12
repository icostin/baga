#include <stdio.h>
#include <aa.h>
#include <gamma.h>

int main (void)
{
    puts("epsilon");
    printf("aa0(0): %s\n", aa0(0));
    printf("aa0(1): %s\n", aa0(1));
    printf("gamma_str(0): %s\n", gamma_str(0));
    printf("gamma_str(1): %s\n", gamma_str(1));

    return 0;
}

