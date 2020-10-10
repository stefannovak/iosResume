//
//  LandingCoordinator.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import UIKit

class LandingCoordinator: Coordinator {
  var children: [String : Coordinator] = [:]
  let navigationController: UINavigationController
  
  lazy var landingViewController = LandingViewController()
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    navigationController.setNavigationBarHidden(true, animated: false)
    navigationController.setViewControllers([landingViewController], animated: true)
  }
}
