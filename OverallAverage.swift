//
//  OverallAverage.swift
//  
//
//	Marks for a class are saved in a 2D array:
//	One dimension for the student, the other for the assignment.
//	This is a program that populates a 4x6 array (4 students, 6 assignments) with 
//	random numbers from 0 to 100.
//	A function will accept the array and pass back the classes overall average.
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//

//			swiftc OverallAverage.swift





import Foundation


//-------------------

//create 4x6 2d array
var wholeClass : [[Int]] = []


srand(UInt32(time(nil)))//need this to mix up and actually get random numbers!
//only need it once


print("\n\n\n")

//--------------------------------------------------
//insert marks in array
for _ in 1...4 {
//for each student
	var student = [Int]()
	for _ in 1...6 {
	//for each assignment
		//get random numbers
		let randMark = Int(random()%(100) + 1)
		//random number between 100 and 0
 		student.append(Int(randMark)) //append to array
	}
	
	wholeClass.append(student)//then actually insert it into the whole array

	print("Student: \(student)")
 }
 //-------------------------------------
 
 
 //retrieved in Feb 2019
 //retrieved from https://stackoverflow.com/questions/28288148/making-my-function-calculate-average-of-array-swift
extension Array where Element == Int {
    /// Returns the sum of all elements in the array
    var total: Element {
        return reduce(0, +)
    }
    /// Returns the average of all elements in the array
    var average: Double {
        return isEmpty ? 0 : Double(reduce(0, +)) / Double(count)
    }
}
//----------------------------------------
 
 
  //get average-------------------------------------
 func getAverage(inputArray : [[Int]]){
 	//gets average
 	var classTotal : Double = 0
 	var studentAverage : Double = 0
	
	for student in 0..<inputArray.count {
		//for number of students, do	
		studentAverage = inputArray[student].average
		classTotal += studentAverage;
		print("Student \(student+1) average : \(String(format: "%.2f", studentAverage))") //rounds it up to 2 decimal places
	}

	let classAverage = String(format: "%.2f", (classTotal/Double(inputArray.count)))
	print("\nClass average : \(classAverage)");	
	print("\n")
 }
 //-------------------------------------
 
 
  
 //get average
 getAverage(inputArray : wholeClass)
 
