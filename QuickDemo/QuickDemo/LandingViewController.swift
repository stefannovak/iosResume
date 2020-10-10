//
//  LandingViewController.swift
//  QuickDemo
//
//  Created by Stefan Novak on 09/10/2020.
//

import SnapKit
import UIKit

class LandingViewController: ViewController {
  //MARK: - UI Creating Functions
  
  //TODO: - Refactor this stuff
  private func createButton(imageName: String, titleName: String) -> UIButton {
    let darkGreenColor = UIColor(red: CGFloat(46.0/255.0), green: CGFloat(204.0/255.0), blue: CGFloat(113.0/255.0), alpha: CGFloat(1.0))
    let button = UIButton()
    let image = UIImage(named: imageName)
    button.layer.cornerRadius = 12.0
    button.setImage(image, for: .normal)
    button.backgroundColor = .white
    button.setTitle(titleName, for: .normal)
    button.setTitleColor(darkGreenColor, for: .normal)
    button.titleEdgeInsets = UIEdgeInsets(top: CGFloat(0), left: CGFloat(50.0), bottom: CGFloat(0.0), right: CGFloat(0.0))
    button.imageEdgeInsets = UIEdgeInsets(top: CGFloat(0), left: CGFloat(20.0), bottom: CGFloat(0), right: CGFloat(0))
    button.contentHorizontalAlignment = .left
    button.addTarget(self, action: #selector(onAlertTapped(_:)), for: .allEvents)
    return button
  }
  
  @objc private func testMethod() {
    print("Testing")
  }
  
  @objc func onAlertTapped(_ sender: Any) {
    let alert = UIAlertController(title: "Stefan is so cool", message: "This is my alert dialog that I wrote to display how cool I am. Do you agree?", preferredStyle: .alert)
    let action1 = UIAlertAction(title: "Yes", style: .default) { (action) in
      print("this is action1")
    }
    let action2 = UIAlertAction(title: "Also Yes", style: .destructive) { (action) in
      print("this is action2")
      if let url = URL(string: "https://www.stefanalexnovak.com") {
          UIApplication.shared.open(url)
      }
    }
    alert.addAction(action1)
    alert.addAction(action2)
    self.present(alert, animated: true, completion: nil)
  }
  
  private func createLabel(text: String, font: UIFont?) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = .white
    label.textAlignment = .center
    label.font = font
    return label
  }
  // MARK: - UI Components
  
  private lazy var profilePicture: UIImageView = {
    let myView = UIImageView()
    myView.contentMode = .scaleAspectFit
    myView.clipsToBounds = true
    myView.layer.cornerRadius = 32.0
    myView.image = UIImage(named: "me")
    return myView
  }()
  
  private lazy var nameLabel: UILabel = {
    createLabel(text: "Stefan Novak", font: UIFont(name: "AmericanTypewriter-Bold", size: 48))
  }()
  
  private lazy var titleLabel: UILabel = {
    createLabel(text: "MOBILE DEVELOPER", font: UIFont(name: "AmericanTypewriter", size: 24))
  }()
  
  private lazy var horizontalLine: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    return view
  }()
  
  private lazy var phoneButton: UIButton = {
    createButton(imageName: "phone", titleName: "07309 793313")
  }()
  
  private lazy var emailButton: UIButton = {
    createButton(imageName: "email", titleName: "stefannovak96@gmail.com")
  }()
  
  private lazy var websiteButton: UIButton = {
    createButton(imageName: "website", titleName: "www.stefanalexnovak.com")
  }()
  
  // MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initLayout()
    makeConstraints()
  }
  
  private func initLayout() {
    [profilePicture,
    nameLabel,
    titleLabel,
    horizontalLine,
    phoneButton,
    emailButton,
    websiteButton].forEach(view.addSubview)
  }
  
  private func makeConstraints() {
    profilePicture.snp.makeConstraints{make in
      make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(128)
      make.centerX.equalToSuperview().inset(16)
      make.width.height.equalTo(150)
    }
    
    nameLabel.snp.makeConstraints{make in
      make.top.equalTo(profilePicture.snp.bottom).offset(46)
      make.centerX.equalToSuperview().inset(16)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
    }
    
    titleLabel.snp.makeConstraints{make in
      make.top.equalTo(nameLabel.snp.bottom).offset(12)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
    }
    
    horizontalLine.snp.makeConstraints{make in
      make.top.equalTo(titleLabel.snp.bottom).offset(8)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(64)
      make.height.equalTo(1)
    }
    
    phoneButton.snp.makeConstraints{make in
      make.top.equalTo(horizontalLine.snp.bottom).offset(24)
      make.height.equalTo(64)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(28)
    }
    
    emailButton.snp.makeConstraints{make in
      make.top.equalTo(phoneButton.snp.bottom).offset(24)
      make.height.equalTo(64)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(28)
    }
    
    websiteButton.snp.makeConstraints{make in
      make.top.equalTo(emailButton.snp.bottom).offset(24)
      make.height.equalTo(64)
      make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(28)
    }
  }
}
