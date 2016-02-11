//
//  AppDelegate.swift
//  PushTest
//
//  Created by Nikolay Shubenkov on 11/02/16.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

import OneSignal


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        requestPushes()
        
        return true
    }

    func requestPushes() {
        
        let settings = UIUserNotificationSettings(forTypes: [.Sound, .Badge, .Alert], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        UIApplication.sharedApplication().registerForRemoteNotifications()
    }
    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        print(deviceToken.description)
        
    }
    
    
    
    
    
    
    
}

