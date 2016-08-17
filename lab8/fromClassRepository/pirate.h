// C++ header file for class Pirate. Shows only the
// names of the variables and methods, not the body of the methods.
#include <string>

using namespace std;

class Pirate {
   public:
      Pirate(string n);
      string getName();
      string speak();
   private:
      string name;
};
