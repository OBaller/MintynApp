//
//  SignUpViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class SignUpViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  private let userAuth = AuthManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    passwordTextField.isSecureTextEntry = true
  }
  
  
  private func registerButtonTapped () {
    emailTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
    guard let email = emailTextField.text?.trimmingCharacters(in: .whitespaces), let password = passwordTextField.text?.trimmingCharacters(in: .whitespaces), !email.isEmpty, !password.isEmpty, password.count >= 6 else {
      alertUserRegisterError("Woops", "Enter all fields. Password must be 6 characters or more")
      return
    }
    
    userAuth.registerUser(with: email, and: password) { [weak self] result in
      result ? self?.resgisterSuccessAlert() : self?.alertUserRegisterError("Error", "\(self?.userAuth.appError?.localizedDescription ?? "Cannot register user")")
    }
  }
  
  private func alertUserRegisterError (_ title: String, _ message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
    present(alert, animated: true, completion: nil)
  }
  
  private func resgisterSuccessAlert () {
    let alert = UIAlertController(title: "Success", message: "Account successfully created. Go back to login", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
    present(alert, animated: true, completion: {
      self.emailTextField.text = ""
      self.passwordTextField.text = ""
    })
  }
  
  @IBAction func registerButtonTapped(_ sender: UIButton) {
    registerButtonTapped()
  }
  
}
