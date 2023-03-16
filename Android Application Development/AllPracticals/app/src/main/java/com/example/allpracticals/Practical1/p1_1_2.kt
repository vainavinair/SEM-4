package com.example.allpracticals.Practical1

import java.util.*

fun main() {

    var sc  = Scanner(System.`in`)
    println("Enter number of passes: ")
    var noOfPasses = sc.nextInt()
    println("Enter number of students: ")
    var noOfStudent = sc.nextInt()
    if(noOfPasses > noOfStudent+1){
        println("YES")
    } else {
        println("NO")
    }
}