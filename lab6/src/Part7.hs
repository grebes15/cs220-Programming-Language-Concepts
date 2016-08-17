-- Andreas Landgrebe
-- Computer Science 220
-- Lab 6: Haskell
-- Part 7: Create three Haskell fucntions.



-- Part (a) is nontrivial since it is not rotating anything, it is split a list according the position that I give it to be splitting from
-- Part (a) is interesting to be able to use this function a split a list to the specified position and then returning a tuple of two lists.

-- (a) Manipulate a list in a nontrivial and interesting way.
import Data.List
-- importing a data file to use a certain function

list = [1,2,3,4,5,6,7,8,9]
-- made up a list
listofstrings = ["this","is","a","list","of","strings"]
-- made up a list of strings to be used for part b
factorial n = if n == 0 then 1 else n * factorial (n - 1)
-- that factorial fucntion finds the factorial of any function. This is a recursive functions. 

main :: IO ()
main = do
-- in order to print out something, the following line is important
-- to writ "main = do" in other words, in the main method, do the following
	print list
-- printing the list that it specified above
	print $ splitAt 4 list
-- split the list at the 4 postion and prints out a tuple of two lists
-- the following two websites assisted me for Part7(a) for manipulation a list
-- https://wiki.haskell.org/How_to_work_on_lists 
-- mainly the section of split a list into two smaller lists was most helpful
-- https://www.fpcomplete.com/school/to-infinity-and-beyond/pick-of-the-week/Simple%20examples
-- mainly the Data.List section assisted me the most
--In order to compile and run this program, enter the following commands into the terminal to have the program working correctly
--ghc -o Part7 Part7.hs
-- ./Part7


-- (b) Doing something interesting with stirngs. Remember, a string is (internally) just a list of characters; try to use at least two of the functions "head", "tail", "init", and "last" in your function. Justify "interesting"!
--the interesting aspect of this is that I am able to manipulate this list of strings by using the function head and last. I think this is really cool to be able to do this in a new language that I have never worked with before.
	print $ listofstrings
  -- printing out the list of strings to start off
	print $ head listofstrings
  --printing out the first element of the list: listofstrings
	print $ last listofstrings
  --printing out the last element of the list: listofstrings
  --the following website assisted me in configuring how to use the functions of head and last.
  --https://wiki.haskell.org/How_to_work_on_lists
  
-- (c) The last one should perform a nontrivial and interesting calculation on one or more numeric arguments. If possible, use conditionals ("if" boolean operators, etc.) to create several cases. Explain what your function does. And what makes it non-trivial and interesting.

	do putStrLn "What is 5! ? "
	--ask the question, what is 5 factorial
	x <- readLn
	--reads in x. You are answering what 5 factorial is
	if x == factorial 5
	-- if x == 120, then display "You're right"
	-- if x != 120, then display "You're wrong"
		then putStrLn "You're right!"
		else putStrLn "You're wrong!"
-- the following website is how I found a factorial fucntion to use for the part c of this lab.
-- https://wiki.haskell.org/Learn_Haskell_in_10_minutes





 
  
