//
//  ApplicationCoordinator.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import UIKit

//2 - First coordinator used, creates a navigation controller and starts the LandingCoordinator
class ApplicationCoordinator: Coordinator {

  var children: [String: Coordinator] = [:]

  private let window: UIWindow
  let navigationController: UINavigationController

  init(window: UIWindow) {
    self.window = window
    navigationController = UINavigationController()
    window.rootViewController = navigationController
  }

  func start() {
    start(coordinator: LandingCoordinator(navigationController: navigationController))
  }
 //TODO:
 /*
   Button that uses alertView controller
   UIAlertController
   */
}
