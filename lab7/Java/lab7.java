/*
Andreas Landgrebe
Computer Science 220
Lab 7 Java
Java Lambda Expressions
These java program uses lambda expressions
on some arithmetic that is completely random but pretty cool

*/

import java.util.*;
import java.util.function.*;

public class lab7{

	public static void main(String[] args){

		for(int a = 1; a <= 50; a++) { //going from 0 to 50
			int b = somethingInteresting(a,(Integer t)->3+7+5+9/5*t-4-6+t+65+8+t+4+3+t/t); //completely random math
			System.out.println("a is the counter " + a + " and b randomly is going to be " + b);
		}
	}

	public static int somethingInteresting(int t, Function<Integer,Integer> f) {
		return f.apply(t);
	}
}