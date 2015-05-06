//
//  AppDelegate.swift
//  StretchProblemWedMay5thSwift
//
//  Created by Douglas Voss on 5/6/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//
/*
studentCan: iterate through numbers, find multiples, and add them together

* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6, and 9.  The sum of these multiples is 23.

* Create a method that will find the sum of all the multiples of 3 or 5 below an integer passed into it

* Return the sum of all the multiples of 3 or 5 below 1000.

check answers

650: 98043
999: 232169
1000: 233168
1001: 233168

*/

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(#number: Int) -> Int {
        /*var someInts : Array = [Int]()
        someInts.append(3)
        someInts.append(5)
        
        for (var i=0; i<someInts.count; i++) {
            println("someInts[\(i)]==\(someInts[i])")
        }*/
        
        //var multsOf3 : Array = [Int]()
        var sum : Int = 0
        /*for (var i=1; (i*3) < number; i++) {
            multsOf3.append(i*3)
            sum += multsOf3[i-1]
            println("multsOf3[\(i-1)]==\(multsOf3[i-1]); sum=\(sum)")
        }
        
        var multsOf5 : Array = [Int]()
        for (var i=1; (i*5) < number; i++) {
            multsOf5.append(i*5)
            sum += multsOf5[i-1]
            println("multsOf5[\(i-1)]==\(multsOf5[i-1]); sum=\(sum)")
        }*/
        
        var thresh : Int = number
        if (thresh > 1000) {
            thresh = 1000
        }
        for (var i=0; i<thresh; i++) {
            if ((i%3 == 0) || (i%5 == 0)) {
                sum += i
            }
        }
        
        return sum
        
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //println("function(10) returns \(sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(number: 10))")
        println("function(650) returns \(sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(number: 650))")
        println("function(999) returns \(sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(number: 999))")
        println("function(1000) returns \(sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(number: 1000))")
        println("function(1001) returns \(sumOfNumbersThatAreMultiplesOf3or5BelowThisNumber(number: 1001))")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

