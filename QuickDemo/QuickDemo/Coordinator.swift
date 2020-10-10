//
//  Coordinator.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import Foundation

protocol Coordinator: class {
  var identifier: String { get }
  var children: [String: Coordinator] { get set }

  func start()
  func start(coordinator: Coordinator)
  func remove(coordinator: Coordinator)
}

extension Coordinator {
  var identifier: String {
    return String(describing: self)
  }

  func start(coordinator: Coordinator) {
    children[coordinator.identifier] = coordinator
    coordinator.start()
  }

  func remove(coordinator: Coordinator) {
    children.removeValue(forKey: coordinator.identifier)
  }
}
