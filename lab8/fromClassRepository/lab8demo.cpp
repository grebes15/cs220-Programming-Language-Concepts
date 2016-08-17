// Bob Roos
// Demonstration program for lab 8. This program is used in
// conjunction with the following files:
//       pirate.h
//       pirate.cpp
//       parrot.h
//       parrot.cpp
//
// For a "single file" version of this example, see file "lab8onefile.cpp".
//
// To compile and execute it, type:
//       g++ lab8demo.cpp pirate.cpp parrot.cpp -o lab8demo
//       ./lab8demo

#include <iostream>
#include <string>
#include "pirate.h"
#include "parrot.h"

using namespace std;

int main() {
   string name;

   cout << "Pirate's name? ";
   cin >> name;
   Pirate pirate(name);

   cout << pirate.getName() << "'s parrot's name? ";
   cin >> name;
   Parrot parrot(name);

   cout << pirate.getName() << " says " << pirate.speak() << endl;
   cout << pirate.getName() << "'s parrot, " << parrot.getName() << ", says " 
        << parrot.speak() << endl;
}
