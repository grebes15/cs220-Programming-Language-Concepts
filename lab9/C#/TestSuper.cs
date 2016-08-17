//Andreas Landgrebe
//Computer Science 220
//Lab 9: Object-Oriented Programming
//1. Properties in C#
//This is the main file to test the SuperHero class with the name, age, rank properties.

//To compile and run, please run the following commands in the terminal:
//		mcs SuperHero.cs TestSuper.cs -out:super
//		./super
//
//Honor code pledge: On my honor, as a Allegheny College studnet, I, Andreas Bach Landgrebe,
//have neither given nor received unauthorized assistance on this work.


using System;

class TestSuper {
	static void Main() {

		SuperHero Superman = new SuperHero("Superman", 25, 5); //Superman is powerful but not as powerful as others

		SuperHero Batman = new SuperHero("Batman", 35, 2); //Batman is okay

		SuperHero Flash  = new SuperHero("Flash", 18, 7); //The Flash is unstoppable, nobody can beat the Flash

		SuperHero Antman = new SuperHero("Antman", 55, 1); //Antman is weak and old compared to the rest

		SuperHero Andreas = new SuperHero("Andreas", 21, 1); //I do not do very well but hey, I am not a superhero

		Console.WriteLine(Superman.name + ", age " + Superman.age + ", rank " + Superman.rank +
			" can beat " + Batman.name + ", age " + Batman.age + ", rank " + Batman.rank);
		//Superman can beat Batman

		Console.WriteLine(Flash.name + ", age " + Flash.age + ", rank " + Flash.rank +
			" can beat " + Antman.name + ", age " + Antman.age + ", rank " + Antman.rank);
		//The Flash can destroy the Antman

		Console.WriteLine(Batman.name + ", age " + Batman.age + ", rank " + Batman.rank +
			" can beat " + Antman.name + ", age " + Antman.age + ", rank " + Antman.rank);
		//Hey, at least Batman can beat Antman
		Console.WriteLine(Andreas.name + ", age " + Andreas.age + ", rank " + Andreas.rank +
			" ties with " + Antman.name + ", age " + Antman.age + ", rank " + Antman.rank);
		//At least Antman doesn't lose this match
	}

}