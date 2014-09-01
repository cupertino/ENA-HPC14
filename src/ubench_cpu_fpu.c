// Microbenchmark to stress CPU's floating point unity

#include <stdlib.h>
#include <math.h>

int main (int argc, char *argv[])
{
  double i,j;
  i = 0.5;
  j = argc;

  while(1)
    i += j;

   return i;
}

