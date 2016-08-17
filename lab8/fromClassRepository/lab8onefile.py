# Bob Roos
# Lab 8 demo--object-oriented programming in Python
# This puts all the files for the demonstration into a single file.
#
# To run this program, type:
#     python lab8onefile.py

""" 
   Pirates have a name and always say "Arrrr!"
""" 
class Pirate:
    def __init__(self,name):
        self.name = name
    def getName(self):
        return self.name
    def speak(self):
        return "Arrrr!"

""" 
   Parrots have a name and always say "Awwwk!"
""" 
class Parrot:
    def __init__(self,name):
        self.name = name
    def getName(self):
        return self.name
    def speak(self):
        return "Awwwk!"

"""
  main program creates a Pirate and his Parrot and makes them speak
"""
if __name__ == "__main__":
   name = raw_input("Pirate's name? ")
   pirate = Pirate(name)

   name = raw_input(pirate.getName()+"'s parrot's name? ")
   parrot = Parrot(name)

   print (pirate.getName()+" says "+pirate.speak())
   print (pirate.getName()+"'s parrot, "+parrot.getName()+
           ", says "+parrot.speak())
