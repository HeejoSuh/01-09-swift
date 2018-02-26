//
//  DiceRoll.swift
//  Program that has a procedure called public static void RollDie(int maxValue) 
// Which will randomly generate a value between 1 and maxValue and then place the value in the console.
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
import Foundation

//set to default
var input: String?
var maxNum: Int = 0

		//have to define the variable
func RollDie(maxValue: Int) {
	srand(UInt32(time(nil)))
	var randomNum: Int = Int(random()%(maxValue) + 1)
	print(randomNum)
}

//Get input
while true {
	print("Enter a number: ")
  	input = readLine(strippingNewline: true)
	if let maxNum = Int(input!){
		RollDie(maxValue: maxNum)
		break
	} else {
		print("Enter an integer")
	}
}