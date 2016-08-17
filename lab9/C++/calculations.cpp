//Andreas Landgrebe
//Computer Science 220
//Lab 9: Object-Oriented Programming
//2. Multiple Inheritance 

//This C++ programs displays an example of multiple inheritance in C++
//From the example, I decided to take in two strings so in this case it is my first name and my last name
//After this, this programs will take 4 numbers and calculate the score that one has given from playing a game
//At this point, ones score and name is hard-coded
//In order to run this prgoram, please run the following to a terminal:
//	g++ calculations.cpp -o calculations
//	./calculations

//Honor code pledge: On my honor, as a Allegheny College studnet, I, Andreas Bach Landgrebe,
//have neither given nor received unauthorized assistance on this work.


#include <iostream>
using namespace std;
//Class A has two instances variables which will act as a first name and a last name
//Class A also has a construcutor and two methods
class A {
private:
	string a; //first name
	string b; //last name


public:
	//constructor:
	A(string a, string b) {
		this->a = a;
		this->b = b;

	}

	string getA() {return a;} //being able to read A

	string getB() {return b;} //being able to read B
};

//Class A has two instances variables which will act as two numbers to calculate ones score

class B {
  private:
     int x;//one of the scores to be calculated together 
     int y;//one of the scores to be calculated together

  public:
     // constructor:
     B(int x, int y) {
       this->x = x; this->y = y;
     }

     int getX() { return x;} //being able to read X

     int getY() { return y;} //being able to read Y
};


//Class AB inherits the variables and methods from A and B
//it also has two instance variables or scores and methods

class AB: public A, public B { //this is syntax for subclasses
	private:
		int i; //one of the scores to be calculated together
		int j; //one of the scores to be calculated together 

	public:
		//constructor: this is considered to be a "superclass"
		//since we are incorperating what is in A and B so the header shows the syntax to be able to do so
	AB(string a, string b, int x, int y, int i, int j): A(a,b), B(x,y) {
	this->i = i;
	this->j = j;
}

int getI() { return i;} //being able to read I

int getJ() { return j;} //being read to read J


};

int main() {
	AB z("Andreas", "Landgrebe", 15, 125, 60, 95); //first and last name of the player and the four scoresto multiply together to recrive a final score

	cout << z.getA() + " " + z.getB() + " has a score of: ";

	cout << z.getX() * z.getY() * z.getI() * z.getJ(); 
	//Output: Andreas Landgrebe has a score of 15*125*60*95
	//for your information(fyi) 15*125*60*95 = 10687500
}