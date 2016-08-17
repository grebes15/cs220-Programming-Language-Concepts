// Bob Roos
//
// Example of multiple inheritance in C++
//
// To compile and run this program, type:
//
//      g++ mult.cpp -o mult
//      ./mult

#include <iostream>
using namespace std;

// Class A has two instance variables, a constructor, and two methods:
class A {
  private:
     int x;
     int y;

  public:
     // constructor:
     A(int x, int y) {
       this->x = x; this->y = y;
     }

     int getX() { return x;}

     int getY() { return y;}
};

// Class B has two instance variables, a constructor, and two methods:
class B {
  private:
     int p;
     int q;

  public:
     // constructor:
     B(int p, int q) {
       this->p = p; this->q = q;
     }

     int getP() { return p;}

     int getQ() { return q;}
};

// Class AB inherits the variables and methods from both A and B, and
// in addition has two of its own instance variables and methods:

class AB: public A, public B { // Note syntax for subclasses
  private:
     int s;
     int t;

  public:
     // constructor. Note how we call the "superclass" constructors
     // in the header:
     AB(int x, int y, int p, int q, int r, int s): A(x,y), B(p,q) {
       this->s = s; this->t = t;
     }

     int getS() { return s;}

     int getT() { return t;}
};

int main() {
   AB x(1,2,3,4,5,6);
   cout << x.getX() << ' ' << x.getY() << ' ' << x.getP() << ' '
        << x.getQ() << ' ' << x.getS() << ' ' << x.getT() << endl;
}
