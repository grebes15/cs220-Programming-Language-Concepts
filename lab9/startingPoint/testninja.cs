// Bob Roos
//
// Tests the NinjaTurtle class (in file ninja.cs), using the Name, Color, and
// NumTurtles properties.
//
// To compile and run this, type:
//
//      mcs ninja.cs testninja.cs -out:testninja
//      ./testninja


using System;

class TestNinja {
  static void Main() {
    NinjaTurtle mickey = new NinjaTurtle("Michelangelo","orange");
    Console.WriteLine("There are "+NinjaTurtle.NumTurtles+" turtles.");
    Console.WriteLine(mickey.Name+"'s color is "+mickey.Color);

    NinjaTurtle leo = new NinjaTurtle("Leonardo","blue");
    Console.WriteLine("There are "+NinjaTurtle.NumTurtles+" turtles.");
    Console.WriteLine(leo.Name+"'s color is "+leo.Color);

    NinjaTurtle raph = new NinjaTurtle("Raphael","red");
    Console.WriteLine("There are "+NinjaTurtle.NumTurtles+" turtles.");
    Console.WriteLine(raph.Name+"'s color is "+raph.Color);

    NinjaTurtle donnie = new NinjaTurtle("Donatello","purple");
    Console.WriteLine("There are "+NinjaTurtle.NumTurtles+" turtles.");
    Console.WriteLine(donnie.Name+"'s color is "+donnie.Color);

    mickey.Color = "fuchsia";
    leo.Color = "chartreuse";
    Console.WriteLine(mickey.Name+"'s color is "+mickey.Color);
    Console.WriteLine(leo.Name+"'s color is "+leo.Color);
  }
}
