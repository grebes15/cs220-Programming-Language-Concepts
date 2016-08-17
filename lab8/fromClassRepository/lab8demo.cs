// Bob Roos
// Sample file for lab 8: main program to test C# classes "Pirate" and
// "Parrot". See files "pirate.cs" and "parrot.cs"
//
// See file "lab8onefile.cs" for a version that has all three
// classes in a single file.
//
// To compile and run, type:
//          mcs lab8demo.cs pirate.cs parrot.cs  -out:csharpdemo
//          ./csharpdemo

using System;
using PirateNS;
using ParrotNS;
namespace Lab8DemoNS {
  class Lab8Demo {

      static void Main(string[] args) {
         string name;
   
         Console.Write("Pirate's name? ");
         name = Console.ReadLine();
         Pirate pirate = new Pirate(name); // test Pirate constructor
   
         Console.Write("Parrot's name? ");
         name = Console.ReadLine();
         Parrot parrot = new Parrot(name); // test Parrot constructor
   
         // Test "name" and "speak" methods in both Pirate and Parrot:
         Console.WriteLine(pirate.getName()+" says "+pirate.speak());
         Console.WriteLine(pirate.getName()+"'s parrot, "+parrot.getName()+
                          ", says "+ parrot.speak());
      }
   }
}
