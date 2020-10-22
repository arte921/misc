#include <stdio.h>

int main () {

  int t=5;
  int *p = &t;
  *p = 10;
  printf("%d", *p);

}
