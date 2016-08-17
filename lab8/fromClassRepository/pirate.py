# Bob Roos
# Lab 8 demo--object-oriented programming in Python
#

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
