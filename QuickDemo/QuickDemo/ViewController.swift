//
//  ViewController.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import UIKit

class ViewController: UIViewController {
  
  var loadingContainerView: UIView {
    return UIView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    background()
  }
  
  func background() {
    let backgroundImage = UIImage(named: "background")
    var imageView: UIImageView!
    imageView = UIImageView(frame: view.bounds)
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.image = backgroundImage
    imageView.center = view.center
    view.addSubview(imageView)
    self.view.sendSubviewToBack(imageView)
  }
}
