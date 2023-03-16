package com.example.allpracticals.Practical1

import java.util.*

fun main(){
    println("Enter a number: ")
    var sc = Scanner(System.`in`).nextInt()
    for(i in 1..12){
        for (j in 1..sc) {
            print("${j}*${i}=${i * j}\t")
        }
        println()
    }
}