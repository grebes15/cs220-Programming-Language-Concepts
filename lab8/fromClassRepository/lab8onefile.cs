// Bob Roos
// Lab 8 C# demonstration program all in one file.
//
// To compile and run, type:
//       mcs lab8onefile.cs -out:csharpdemo
//       ./csharpdemo

using System;

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


// A Parrot has a name and always says "Awwwk!"
class Parrot {
   private string name;

   // Constructor:
   public Parrot(string n) {
      name = n;
   }

   public string getName() { return name; }

   public string speak() { return "Awwwk!"; }
}

// Main program creates a Pirate and his Parrot and makes them speak.
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
