/**
 * Bob Roos
 * Sample program to accompany lab 7
 *
 * Demonstration of functions as arguments to a function
 *
 * You will imitate this program in the lab assignment.
 */
#include <stdio.h>

/********
 * sqr takes an integer x and returns  x squared.
 *******/
int sqr(int x) { return x*x; }

/********
 * cube takes an integer x and returns  x cubed.
 *******/
int cube(int x) { return x*x*x; }

/********
 * weird takes an integer x and returns  either x^2+x or 10x-x^2,
 * depending on whether x is less than 5 or not.
 *******/
int weird(int x) { if (x < 5) return x*(x+1); else return x*(10-x); }

/********
 * avg finds the average of f(a) and f(b) for some int-valued function f 
 * and two integers a and b.
 *******/
double avg(int (*f)(int), int a, int b) {
  return (f(a)+f(b))/2.0;
}

int main() {
  printf("avg of 15^2 and 20^2 is %f\n",avg(sqr,15,20));

  printf("avg of 15^3 and 20^3 is %f\n",avg(cube,15,20));

  printf("avg of weird(15) and weird(3) is %f\n",avg(weird,15,3));
}
