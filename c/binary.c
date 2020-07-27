#include <stdio.h>
#include <math.h>

int main () {
  int exp=20;
  int n;
  int i;
  int t;
  int m;
  int max=pow(2,exp);
  n = 1;
  while (n<=max) {
    printf("%d",n-1);
    printf(" ");
    i=exp-1;
    t=n;
    while (i>=0){
      m=pow(2,i);
      if(t > m){
        printf("1");
        t=t-m;
      } else {
        printf("0");
      }
      i--;
    }
    printf("\n");
    n++;
  }
  return 0;
}
