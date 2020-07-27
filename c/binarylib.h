#include <stdio.h>
#include <math.h>
#include <string.h>

const char * tobinary (int t) {
  char str[8];

  int i=7;
  int m;
  while (i>=0){
    m=pow(2,i);
    if(t >= m){
      strncat(str,"1",1);
      t=t-m;
    } else {
      strncat(str,"0",1);
    }
    i--;
  }
  return str;
}
