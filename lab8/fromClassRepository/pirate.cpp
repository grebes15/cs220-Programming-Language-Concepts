// Bob Roos
// Demonstration program for lab 8. This program is used in
// conjunction with the following files:
//       lab8demo.cpp
//       pirate.h
//       pirate.cpp
//       parrot.h
//       parrot.cpp

#include <string>
#include "pirate.h"

using namespace std;

Pirate::Pirate(string n) { Pirate::name = n; }

string Pirate::getName() { return Pirate::name; }

string Pirate::speak() { return "Arrrr!"; }
