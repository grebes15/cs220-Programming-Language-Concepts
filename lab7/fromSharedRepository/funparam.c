#include <stdio.h>
#include <stdlib.h>

int f1(int a) {
  return 2*a;
}

int f2(int a) {
  return a/2;
}

int f3(int a) {
  return a+1;
}

int f4(int a) {
  return a-1;
}

int apply(int a, int (*f)(int)) {
  return f(a);
}

int main() {
  int i = 10;
  printf("f1(%d) = %d\n",i,apply(i,f1));
  printf("f2(%d) = %d\n",i,apply(i,f2));
  printf("f3(%d) = %d\n",i,apply(i,f3));
  printf("f4(%d) = %d\n",i,apply(i,f4));
  printf("f4(%d) = %d\n",-10,apply(i,abs));
}

