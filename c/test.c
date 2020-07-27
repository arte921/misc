#include <stdio.h>

int main () {

  int t=5;
  int *p=&t;
  t=6;
  printf("%d",*p);

}
