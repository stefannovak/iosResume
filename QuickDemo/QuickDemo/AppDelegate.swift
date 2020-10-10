//
//  AppDelegate.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var applicationCoordinator: ApplicationCoordinator?
    
  //1 - Entry point to the app
  //Create a window, launch ApplicationCoordinator
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
      window = UIWindow(frame: UIScreen.main.bounds)
      window?.makeKeyAndVisible()
      applicationCoordinator = ApplicationCoordinator(window: window!)
      applicationCoordinator?.start()
      return true
    }
}
