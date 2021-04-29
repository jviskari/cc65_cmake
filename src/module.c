extern const char text[];       /* In text.s */

#include <stdio.h>
#include <stdlib.h>
#include "module.h"


int print_it()
{
    printf ("%s\n", text);
    return EXIT_SUCCESS;
}