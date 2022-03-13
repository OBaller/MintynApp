//
//  LoginViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

import UIKit


class LoginViewController: UIViewController {
  
  @IBOutlet weak var productsCollectionViewCell: UICollectionView!
  @IBOutlet weak var baseView: UIView!
  @IBOutlet weak var phoneNumberView: UIView!
  @IBOutlet weak var phoneNumberTextField: UITextField!
  @IBOutlet weak var passwordView: UIView!
  @IBOutlet weak var passwordTextField: PaddedTextField!
  @IBOutlet weak var checkBox: UIButton!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var passwordToggleImage: UIButton!
  
  private let userAuth = AuthManager()
  var toggleCheck = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    productsCollectionViewCell.delegate = self
    productsCollectionViewCell.dataSource = self
    setupViews()
  }
  
  private func setupViews () {
    passwordTextField.isSecureTextEntry = true
    passwordTextField.leftView = UIView (frame: CGRect(x: 0, y: 0, width: 15, height: 0))
    textFieldWrapperStyling([phoneNumberView, passwordView])
    styleCheckBox()
    styleLoginButton()
    styleBaseViewWrapper()
  }
  
  private func textFieldWrapperStyling (_ uiViews: [UIView]) {
    uiViews.forEach { viewToStyle in
      viewToStyle.layer.borderWidth = 1
      viewToStyle.layer.borderColor = UIColor.lightGray.cgColor
      viewToStyle.layer.cornerRadius = 8
      viewToStyle.layer.opacity = 0.5
      // Background Colour
    }
  }
  private func styleCheckBox () {
    checkBox.layer.borderWidth = 1
    checkBox.layer.borderColor = UIColor.lightGray.cgColor
    checkBox.layer.cornerRadius = 4
  }
  
  private func styleLoginButton () {
    loginButton.layer.cornerRadius = 8
  }
  
  private func styleBaseViewWrapper () {
    baseView.clipsToBounds = true
    baseView.layer.cornerRadius = baseView.frame.size.width / 10.0
    baseView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
  }
  
  private func alertUserLoginError ( _ title: String, _ message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  
  private func toHomeScreen () {
    guard let homeScreenVC = storyboard?.instantiateViewController(withIdentifier: "baseTabBar") as? UITabBarController else { return }
    homeScreenVC.modalPresentationStyle = .fullScreen
    self.present(homeScreenVC, animated: true, completion: nil)
  }
  
  private func loginButtonTapped () {
    phoneNumberTextField.resignFirstResponder()
    passwordTextField.resignFirstResponder()
    
    let email = phoneNumberTextField.text!, password = passwordTextField.text!
    if email.isEmpty || password.isEmpty {
      alertUserLoginError("Woops", "Fill all fields to log in")
    } else {
      
      userAuth.userLogin(with: email, and: password) {[weak self] result in
        self?.phoneNumberTextField.text = ""
        self?.passwordTextField.text = ""
        result ? self?.toHomeScreen() :  self?.alertUserLoginError("Error", "\(self?.userAuth.appError?.localizedDescription ?? "Login Error")")
      }
    }
  }
  
  
  @IBAction func passwordToggleButton(_ sender: UIButton) {
    passwordTextField.isSecureTextEntry.toggle()
    let imageName = passwordTextField.isSecureTextEntry ? "eye" : "eye.slash"
    passwordToggleImage.setImage(UIImage(systemName: imageName), for: .normal)
  }
  
  @IBAction func markCheckBox () {
    toggleCheck.toggle()
    toggleCheck ?  checkBox.setImage(UIImage(systemName: "checkmark"), for: .normal) :  checkBox.setImage(UIImage(), for: .normal)
  }
  
  @IBAction func didTapLoginButton(_ sender: UIButton) {
    loginButtonTapped()
  }
  
}



extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return productsCellModels.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = productsCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductsCollectionViewCell
    cell.layer.cornerRadius = 5
    cell.configureCell(with: productsCellModels[indexPath.item])
    if indexPath.item == 0 {
      cell.comingSoonLabel.text = "Coming soon..."
    } else {
      cell.comingSoonLabel.text = ""
    }
    return cell
    
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = ((collectionView.frame.size.width - 55) / 2)
    return .init(width: width, height: 100)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return .init(top: 5, left: 20, bottom: 5, right: 20)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 10
  }
  
  
}

extension LoginViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == phoneNumberTextField {
      passwordTextField.becomeFirstResponder()
    } else if textField == passwordTextField {
      loginButtonTapped()
    }
    return true
  }
}

