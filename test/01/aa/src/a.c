#include "intern.h"
#include <bb.h>

char const * aa0 (int x)
{
    return (x == bb0() ? "equ" : "diff");
}

