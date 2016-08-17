// Bob Roos
// Demonstration of lambda expressions in Java.
// This tabulates the values of two different polynomial for arguments 
// 0, 1, ..., 9.
// However, the polynomials are not ordinary Java functions but 
// lambda expressions.

import java.util.*;
import java.util.function.*;

public class FunParam {
  public static void main(String[] args) {
    // For each value of i, call the "poly" function with a lambda
    // expression.
    for (int i = 0; i < 10; i++) {
      double y = poly(i,(Double x)->3+2*x-4*x*x); // lambda expression
      System.out.println("i="+i+" y="+y);
    }
    for (int i = 0; i < 10; i++) {
      double y = poly(i,(Double x)->-3+4.5*x+.01*x*x); // lambda expression
      System.out.println("i="+i+" y="+y);
    }
  }

  // Given a function f and a value x, apply f to x and return the result:
  public static double poly(double x, Function<Double,Double> f) {
    return f.apply(x);
  }
}
   
