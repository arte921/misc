#include <stdio.h>

int main() {
  int s;
  int v;
  int t;
  v=1;
  t=0;
  s=1;

  while (s<999999999) {
    t=v;
    v=s;
    s=t+v;
    printf("%d", s);
    printf("\n");
  }
  return 0;
}
