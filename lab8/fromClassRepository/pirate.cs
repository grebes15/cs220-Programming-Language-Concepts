// Bob Roos
// Lab 8 demonstration program
//
// See files "parrot.cs" and "lab8demo.cs" for the
// other parts of this program.

using System;

namespace PirateNS
{
   // A Pirate has a name and always says "Arrrr!"
   class Pirate {
      private string name;
   
      // Constructor:
      public Pirate(string n) {
         name = n;
      }
   
      public string getName() { return name; }
   
      public string speak() { return "Arrrr!"; }
   }
}
