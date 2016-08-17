// Bob Roos
// Demonstration of "properties" in C#
//
// A "property" is a way of wrapping up "set" and/or "get" methods for
// an instance variable or static variable. 
//
// In this program, we have two instance variables, "name" and "color",
// and one static (class) variable "numTurtles". Corresponding to these 
// we have three "properties": "Name", "Color", and "NumTurtles".
//
// To compile and run this, type:
//
//      mcs ninja.cs testninja.cs -out:testninja
//      ./testninja

class NinjaTurtle {
  private static int numTurtles = 0; // the "= 0" isn't necessary
  private string name;
  private string color;

  // Constructor:
  public NinjaTurtle (string name, string color) {
    this.name = name;
    this.color = color;
    numTurtles++; // each time we construct a turtle, increase the count
  }

  // The "Name" property gives read access to "name":
  public string Name {
    get { return name; }
  }

  // The "Color" property gives read and write access to "color":
  public string Color {
    get { return color; }
    set { color = value; }
  }

  // The "NumTurtles" property gives read access to "numTurtles":
  public static int NumTurtles {
    get { return numTurtles; }
  }
}
