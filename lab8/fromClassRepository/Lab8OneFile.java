// Bob Roos
// Lab 8 demonstration program.
//
// This is a one-file version of the pirate/parrot example. The
// classes "Pirate", "Parrot", and "Lab8OneFile" are all contained
// in this single file.
//
// For the multi-file version see "Lab8Demo.java", "Pirate.java", and
// "Parrot.java".
//
// To compile and run, type:
//       javac Lab8OneFile.java
//       java Lab8OneFile

import java.util.Scanner;

///////////////////////////////////////////
// Pirate class (Note: not "public")
///////////////////////////////////////////
class Pirate {
   private String name;

   // Constructor:
   public Pirate(String n) {
      name = n;
   }

   public String name() { return name; }

   public String speak() { return "Arrrr!"; }
}


///////////////////////////////////////////
// Parrot class (Note: not "public")
///////////////////////////////////////////
class Parrot {
   private String name;

   // Constructor:
   public Parrot(String n) {
      name = n;
   }

   public String name() { return name; }

   public String speak() { return "Awwwk!"; }
}

///////////////////////////////////////////
// Lab8OneFile class -- contains main
///////////////////////////////////////////

public class Lab8OneFile {
   public static void main(String[] args) {
      Scanner in = new Scanner(System.in);
      String name;

      System.out.print("Pirate's name? ");
      name = in.next();
      Pirate pirate = new Pirate(name);

      System.out.print(pirate.name()+"'s parrot's name? ");
      name = in.next();
      Parrot parrot = new Parrot(name);
      System.out.println(pirate.name()+" says "+pirate.speak());
      System.out.print(pirate.name()+"'s parrot, "+parrot.name()+", says ");
      System.out.println(parrot.speak());
   }
}
