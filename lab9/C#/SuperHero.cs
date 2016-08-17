//Andreas Landgrebe
//Computer Science 220
//Object-Oriented Programming
//1. Properties in C#
//According to the assignment, we have three instance variables, age, name and rank
//name gives a superhero a name 
//age gives a superhero an age
//rank gives a superhero a rank to be compared to different superhero
//To compile and run, please run the following commands in the terminal:
//		mcs SuperHero.cs TestSuper.cs -out:super
//		./super
//
//Honor code pledge: On my honor, as a Allegheny College studnet, I, Andreas Bach Landgrebe,
//have neither given nor received unauthorized assistance on this work.

using System;

class SuperHero {
	public string name;//name is going to be a string
	public int age; //age is just a number so it is going to be an int
	public int rank; //rank is just a number so it is going to be an int

	//Constructor:
	public SuperHero (string name, int age, int rank){
		this.age = age;//vairable used to give the superhero their age
		this.name = name;//variable used to give the superhero a name
		this.rank = rank; //varuiable used to give superheros a rank
	}

	
	public string Name {
		get { return name; } 
		//only get the name, do not give write access to the Name according to the assignment
	}


	public int Age {
		get { return age; } 
		set { age = value; }
		//give the age read and write access so one can change it even declaring it before
	}

	public int Rank {
		get { return rank; }
		set { rank = value;}
		//give the rank read and write access so the rank could be changed
	}

}
