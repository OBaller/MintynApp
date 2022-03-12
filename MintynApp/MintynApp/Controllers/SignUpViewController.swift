//
//  SignUpViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore

class SignUpViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  //  private let userAuth = AuthManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  
  @IBAction func registerButtonTapped(_ sender: UIButton) {
    
  }
  
  
  
  func checkCharacter(checkSpecial: String, type: CharacterType) -> Bool {
    var pattern: String
    // Regex pattern to check for
    let specCharPattern = "[@%_$#^&*£!.{}~]"
    let numberPattern = "[0-9]"
    let uppercasePattern = "[A-Z]"
    // Various cases am checking for
    if type == .number {
      pattern = numberPattern
    } else if type == .specialCharacter {
      pattern = specCharPattern
    } else if type == .uppercaseChar {
      pattern = uppercasePattern
    } else {
      if checkSpecial.count < 8 {
        return false
      } else {
        return true
      }
    }
    
    // Setting the Regex
    let isSpecialCharacter = try? NSRegularExpression(pattern: pattern)
    // Converting the string to check into NSString to account for charatcers like emojis
    let newString = checkSpecial as NSString
    if let result = isSpecialCharacter?.matches(in: checkSpecial, options: [], range: NSRange(location: 0, length: newString.length)).isEmpty {
      return !result
    } else {
      return false
    }
  }
  
  enum CharacterType {
    case number
    case uppercaseChar
    case specialCharacter
    case greaterThan8
  }
  
}

