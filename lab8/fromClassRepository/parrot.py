# Bob Roos
# Lab 8 demo--object-oriented programming in Python

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
