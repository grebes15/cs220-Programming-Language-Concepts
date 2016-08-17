/*
Andreas Landgrebe
Computer Science 220
Lab 4: Control Structures
Part c: Designing your own recursive function
Anagram finder to find all possible anagram in a string scanned by the user
Source Code for the Anagram finder was used for the following website:
http://www.dreamincode.net/forums/topic/188032-java-recursion-anagram/
*/
import java.util.*;
import java.util.Scanner; //import the scanner

public class Lab4Part4c {
    public void anag(String s1, String s2)  { //passing two strings as parameters

        if(s1.length() == 0)    {
        	//if the length of the string is 0, then print out the second string which contains nothing so it won't print out anything
            System.out.println(s2);

        }

        for(int i = 0; i < s1.length(); i++) {
        	//for loop that will go through the all of the characters in the string
            anag(s1.substring(0, i) + s1.substring(i+1, s1.length()), s1.charAt(i) + s2);
            //this recursive call will go through the entire string and see all of the possible anagrams.
            //unfortunately, this program does not contain a dictionary so some of the words do not exist
            //for example, if I put the word tie, one of possible anagram will be "eit" which is not a word
            //at least, I do not think it is a word unless all my life I was wrong and it is a word.
        }

    }

    public static void main(String[] args)  {
	
        Lab4Part4c ana = new Lab4Part4c();//creating an object of the class
        
        Scanner scan = new Scanner(System.in); //setting up the scanner
        
        String stringScanner; //declaring the string that is going to be scanned in from input
        
        System.out.println("please scan in a string that is all lowercase: "); //println statement
        
        stringScanner = scan.nextLine(); //pass in the stringer
		
        ana.anag(stringScanner, ""); //calling the method of anag inside of the class.

    }
}

