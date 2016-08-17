#Andreas Landgrebe
#Lab 8 - I decided to do python
#To run this program, open a terminal to the directory that this file is in and type the following:
#python lab8.py
#first color is already defined in the constructor so you are scanning this in
#for the rest, please type in the first name when asked, second name when asked and the second color when asked
#after so, the output will be the first name with the first color (green) and the second name with the second color
#after this, it will perform a swap so that second name is with the first color and the first name is with the second color
class Gator:
	def __init__(self,name,color="green"):
		#class gator, default color is green, first color is already given
		self.name = name
		self.color = color
	def getName(self):
		#getter for name
		return self.name
	def getColor(self):
		#getter for color
		return self.color	
	def setName(self,name):
		#setter for nam
		self.name = name
	def setColor(self,color):
		#setter for color
		self.color = color


if __name__ == "__main__":
	#main method
	name = raw_input("First Name? ") #scanning in first name
	gator = Gator(name)
	#first color is already as green
	name2 = raw_input("Second Name? ") #scanning in second name
	color2 = raw_input("Second Color of Choice. Please choose anything except for green ") #scanning in second color

	gator2 = Gator(name2,color2) #variable for second name and color


	print(gator.getName()+ " is " + gator.getColor()) #get first name and color and print it out
	print(gator2.getName() + " is " + gator2.getColor()) #get second name and color and print it out

	temp1 = gator.getName() #temp variable to be swapped
	temp2 = gator2.getName() #temp variable to be swapped

	gator2.setName(temp1) #set the first name to be the second color
	gator.setName(temp2) #set the second name to  be the first color

	print("After calling different methods " + gator.getName() + " is " + gator.getColor())
	#printing out after swapping so it displayed the second name and first color
	print("After calling different methods " + gator2.getName() + " is " + gator2.getColor())
	#printing out after swapping so it displayed the first name and the second color

