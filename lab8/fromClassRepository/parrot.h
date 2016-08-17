// C++ header file for class Parrot. Shows only the
// names of the variables and methods, not the body of the methods.
#include <string>

using namespace std;

class Parrot {
   public:
      Parrot(string n);
      string getName();
      string speak();
   private:
      string name;
};
