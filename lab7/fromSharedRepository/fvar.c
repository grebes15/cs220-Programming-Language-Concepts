/**
 * Bob Roos
 * Sample program to accompany lab 7
 *
 * Demonstration of function variables, i.e., variables that can
 * be assigned a function.
 */
#include <stdio.h>

/********
 * HERE ARE A FEW FUNCTIONS WITH SELF-EXPLANATORY BEHAVIORS:
 *******/
int sqr(int x) { return x*x; }

int cube(int x) { return x*x*x; }

int weird(int x) { if (x < 5) return x*(x+1); else return x*(10-x); }

double dsqr(double x) { return x*x; }

char third(char x[], int len) { if (len >= 3) return x[2]; else return ' ';}

int main() {
  int (*f)(int);        /* f holds a function from ints to ints */
  double (*g)(double);  /* g holds a function from doubles to doubles */
  char (*h)(char[],int); /* h is a function from (int array, int) to char */

  f = sqr;
  printf("square of 15 is %d\n",f(15));

  f = cube;
  printf("cube of 15 is %d\n",f(15));

  f = weird;
  printf("weird of 15 is %d\n",f(15));

  g = dsqr;
  printf("square of 15.5 is %f\n",g(15.5));

  h = third;
  printf("third of \"abcde\" is %c\n",h("abcde",5));
}
