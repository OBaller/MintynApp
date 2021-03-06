//
//  ViewController.swift
//  MintynApp
//
//  Created by naseem on 11/03/2022.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
  
  @IBOutlet weak var greyBackGround: UIView!
  @IBOutlet weak var createAccountButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    styleGreyBackgroundView()
    customizeCreateAccountButton()
  }
  
  private func customizeCreateAccountButton () {
    createAccountButton.layer.borderWidth = 2.0
    createAccountButton.layer.borderColor = UIColor.systemBrown.cgColor
    createAccountButton.layer.cornerRadius = 4
  }
  
  private func styleGreyBackgroundView () {
    greyBackGround.clipsToBounds = true
    greyBackGround.layer.cornerRadius = greyBackGround.frame.size.width / 10.0
    greyBackGround.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
  }
  
  @IBAction func loginButtonTapped(_ sender: UIButton) {
    guard let loginViewController = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else { return }
    navigationController?.pushViewController(loginViewController, animated: true)
  }
  
  @IBAction func signUpButtonTapped(_ sender: UIButton) {
    guard let signUpViewController = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else { return }
    navigationController?.pushViewController(signUpViewController, animated: true)
  }
  
}
