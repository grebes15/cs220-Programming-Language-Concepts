/*
Andreas Landgrebe
Computer Science 220 Lab 1 Part 7

Honor Code: I pledge that this program represents my own program code.
*/

//constant folding

public class Lab1Part7Complex {


	public static int constantFolding(){
		int a = 30;
		int b = 9 - (a / 5);
		int c;

		c = b * 4;
		if (c > 10) {
			c = c - 10;
		}
		return c * (60 / a);
	}

	public static void main(String[] args){




		constantFolding();


	}
}
