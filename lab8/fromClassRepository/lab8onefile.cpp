// Bob Roos
// Demonstration program for lab 8. This is the "single file" version
// of the example that is in files lab8demo.cpp, pirate.h, pirate.cpp,
// parrot.h, and parrot.cpp.
//
// To compile and execute it, type:
//       g++ lab8onefile.cpp -o lab8onefile
//       ./lab8onefile

#include <string>
#include <iostream>

using namespace std;

class Pirate {
   public:
      Pirate(string n) { name = n; }
      string getName() { return name; }
      string speak() { return "Arrrr!"; }
   private:
      string name;
};


class Parrot {
   public:
      Parrot(string n) { name = n; }
      string getName() { return name; }
      string speak() { return "Awwwk!"; }
   private:
      string name;
};


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
