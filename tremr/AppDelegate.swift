//
//  AppDelegate.swift
//  tremr
//
//  Created by nklaasse on 10/22/18.
//  Copyright © 2018 CO.DEsign. All rights reserved.
//

import UIKit

let db = DatabaseManager()
var myDate: Date = Date.init()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Database example
        /*
        db.addUser(name: "nic", email: "nic@gmail.com")
        db.addTremor(restingSeverity: 4.2, posturalSeverity: 3.6, UID: 0)
        for user in db.getUsers() {
            print("name \(user.name), email: \(user.email)")
        }
        for tremor in db.getTremors() {
            print("resting: \(tremor.restingSeverity), postural: \(tremor.posturalSeverity)")
        }
         */
        
        // Fill in some test data for medicine database
        db.addMedicine(UID: 1, name: "medicine1", dosage: "100", monday: true, tuesday: true, wednesday: true, thursday: true, friday: false, saturday: false, sunday: false, reminder: false, start_date: Date().addingTimeInterval(60*60*24), end_date: Date.init())
        db.addMedicine(UID: 2, name: "medicine2", dosage: "100", monday: true, tuesday: true, wednesday: true, thursday: true, friday: false, saturday: false, sunday: false, reminder: false, start_date: Date().addingTimeInterval(-60*60*24), end_date: Date.init())
        db.addMedicine(UID: 1, name: "medicine3", dosage: "100", monday: true, tuesday: true, wednesday: true, thursday: true, friday: false, saturday: false, sunday: false, reminder: false, start_date: Date().addingTimeInterval(-3*60*60*24), end_date: Date.init())
        db.addMedicine(UID: 1, name: "medicine4", dosage: "400", monday: true, tuesday: true, wednesday: true, thursday: false, friday: false, saturday: false, sunday: false, reminder: false, start_date: myDate, end_date: Date.init())
        
        db.testFunctionality()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

