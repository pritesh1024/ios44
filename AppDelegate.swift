//
//  AppDelegate.swift
//  HereMaps
//
//  Created by Pritesh Parekh on 1/24/18.
//  Copyright © 2018 Pritesh Parekh. All rights reserved.
//

import UIKit
import NMAKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        NMAApplicationContext.setAppId("y0knpSjwUE9l1gJA02g6", appCode: "djJHYq4Nd_uwmKljnqRxxA", licenseKey: "MnhK7tlAMJaNEbKnl81L26u2WnERhRG2IxmPCnWZ7izxUOBpKcLroCXlvdxOcU25x8NaoZmbxGGtO7I4e/mxGqXX1yoxSle/Bzfha9Z16woOZu4XUEsN9JT3P5cCv7BMYBsvr0GQbNiLpGuL/+OYjnYPEtW8yVlCrdbI3BRVcBeYXuQRA03z4qN7LGGkJvmtdYUytC+7AjpmFdlMMDgb0rXnS/Cfxo+GT1X+u6GHlr6JBesxB7QbD1nL4+4kPUuGRYxJ0iFdvIQs5dTHe1waMsR9Vw7bI3XZxDk79QB26BfhqjgtMyS2PTQulDvLO5knO6fjqTUiD4wLn+YG9bOs/L6NWzGp1e1x/psTCEwSP/daRElES5AjplcFfqHXKOTLcqv7RR+kcXNzdBXcV0WafxXA0cqydZXynCeAJ6VJGQmcr4i+M3w6QHVrnNhPpf/lN2RZ4kk47+CvTcbCj2ihG7wrQppUI5FeJ+4G74OAZhChtG0mulFmgl/CGdaRzhs24uf7qzw+Re9T5X0Rr0NUSweP1k3w3MIGOoJsRIpTTb1pWhOWIP+ABxj9Zl0pyXirQlKUF2bVE/MeaXy/23afWClddD2t/stZmnWehZFpOcr8/mFtiGlGxNzAKwhPuGfXugcvgKCAvJLuMMevdR1H67gkE4oULxhNuf/6+BgGa5o=")
        
        
        // Override point for customization after application launch.
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

