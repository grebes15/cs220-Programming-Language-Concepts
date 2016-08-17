


#include <stdio.h>
//this calculates factorial of a number
int f1(int x) {

	int counter = 1;
	int factorial = 1;

	if (x < 0){
		printf("Can't give a negative number, please try again");
	}
	else
	{
		for(counter = 1; counter <= x; counter++) {
			factorial = factorial * counter;
		}
		return factorial;
	}
}

//this calculates the fibonacci number
int f2(int x) {
	if( x == 0){
		return 0;
	}
	else if (x == 1) {
		return 1;
		}
		else{
			return (f2(x - 1) + f2(x - 2));
			
	}
}
//checking a number if it is prime
int f3(int x) {
	for(int counter = 2; counter <= x -1; counter++){
		if (x % counter == 0){
			return 0;
		}
		if(counter == x){
			return 1;
		}
	}
}



double mean(int (*f)(int), int a, int b, int c, int d, int e) {
	return (f(a)+f(b)+f(c)+f(d)+f(e))/5.0;
}
//multiply_together_divide_by_7_return_module
double mtdytrm(int(*f)(int), int a, int b) {
	return (f(a)*f(b)) % 7;
}

int main() {

	//printf("factorial of 7 is as follows %d\n",f1(7));

	//printf("The 17th fibonacci number is as follows %d\n",f2(17));

	printf("When multiplying the 7th and 5th fibonacci number and dividing by seven, the remainder is %f\n",mtdytrm(f2,7,5));

	printf("When muliplying 7 factorial (7!) and 5 factorial(5!), and dividing by seven, the remainder is %f\n",mtdytrm(f1,7,5));

	printf("When mulplying the prime numbers of 17 and 11 and dividing by seven, the remainder is %f\n",mtdytrm(f3,17,11));

}