//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Andreas Landgrebe
//Monday November 30, 2015
//Computer Science 220
//Final Project Progress Report
//I would like to acknowledge lynda.com for assisting me on how to use Xcode and write in the Swift programming language.
//Honor code pledge: On my honor, as a Allegheny College studnet, I, Andreas Bach Landgrebe,
//have neither given nor received unauthorized assistance on this work.


//this file is displaying how arrays operate in swift

//this is the name of myself, my brother, and my parents, I could not think of anything creative
var creatingArrays = ["Chris", "Andreas", "Niels", "Birgit"]

var oneElementInArray = [""]
//this statement outputs how many elements are in the array
creatingArrays.count
//this statements outputs true or false if the array contains any elements
//in this case it displays false
creatingArrays.isEmpty

oneElementInArray.isEmpty
//this statement outputs true or false if the array contains any elements
//in this case it dispalys false
oneElementInArray.removeAll()
//this method call of removeall() removes all of the elements in the array
oneElementInArray.isEmpty
//this statements outputs true or false if the array contains any elements
//since I removed all of the elements in the arrays, it is print out true

creatingArrays.contains("Bob")
//this methods checks if the array of creatingArrays contains the element Bob, in this case, it is going to display false

creatingArrays.contains("Andreas")
//this methods checks if the array of creatingArrays contains the element Andreas, in this case, it is going to display true

let andreas = creatingArrays[1]
//the variable andreas now contains what was in index 0 of the array creatingArrays, it is going to be Andreas.

let restOfFamilyInNewYork = creatingArrays[1..<4].sort(>)
//this let statement will assign the variable of restOfFamilyInNewYork to the rest of what is left in the array of creating Arrays so it is going to contains ["Niels", "Birgit", Andreas"] since it is sorting the array to rotate one spot to the right

let birgit = creatingArrays.last!
//this returns the last element in the array

let chris = creatingArrays.first!
//this returns the first element in the array



