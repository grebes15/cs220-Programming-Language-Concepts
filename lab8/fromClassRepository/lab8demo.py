# Bob Roos
# Lab 8 demo--object-oriented programming in Python
# This program requires files pirate.py and parrot.py
#
# To run this program, type:
#     python lab8demo.py

from pirate import *
from parrot import *

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
