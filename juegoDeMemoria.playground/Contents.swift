//: Playground - noun: a place where people can play

import UIKit
//: Playground - noun: a place where people can play

import UIKit

var numero = 0...100

numero.count

for var i=0 ; i < numero.count ; i++ {
    
    if i % 5  == 0 {
        print ("# \(i)" + " Bingo!!!")
    }
    if i % 2  == 0 {
        print ("# \(i)" + " Par!!!")
    }
    if i % 2  == 1 {
        print ("# \(i)" + " Impar!!!")
    }
    if i >= 30 && i <= 40 {
        print ("# \(i)" + " Viva Swift")
    }}