//
//  AppDelegate.swift
//  InstaClonaFirebase
//
//  Created by eyüp yaşar demir on 25.05.2023.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        let currentUser = Auth.auth().currentUser
        let db = Firestore.firestore()
        print("FIRESTORE CONFIG ",db) // silence warning


                if currentUser != nil {
                  let board = UIStoryboard(name: "Main", bundle: nil)
                  let tabBar = board.instantiateViewController(identifier: "tabBar") as! UITabBarController
                    window?.rootViewController = tabBar
                }
        return true
    }


}

