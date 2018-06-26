//
//  AppDelegate.swift
//  navigation-controller-practice
//
//  Created by jinsei shima on 2018/06/26.
//  Copyright © 2018 jinsei shima. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    class NavigationBar: UINavigationBar {

        open override func sizeThatFits(_ size: CGSize) -> CGSize {
            return CGSize(width: UIScreen.main.bounds.width, height: 100)
        }

        override open func layoutSubviews() {
            super.layoutSubviews()
            for view in subviews {
                print(view.description)
                view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100)
            }
        }
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let nv = UINavigationController(navigationBarClass: NavigationBar.self, toolbarClass: nil)
        let vc = ViewController()
        vc.view.backgroundColor = .white
        nv.setViewControllers([vc], animated: true)
        nv.navigationBar.setNeedsLayout()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nv
        window?.makeKeyAndVisible()

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

