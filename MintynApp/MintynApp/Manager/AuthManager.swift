//
//  AuthManager.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit
import FirebaseAuth

class AuthManager {
  var appError: Error?
  
  func registerUser(with email: String, and password: String, completion: @escaping ((Bool)-> ())) {
    FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) {[weak self] registerResponse, error in
      if error != nil {
        self?.appError = error
        completion(false)
      }
      completion(true)
    }
  }
  
  func userLogin(with email: String, and password: String, completion: @escaping ((Bool)-> ())) {
    FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) {[weak self] loginResponse, error in
      if error != nil {
        self?.appError = error
        completion(false)
      }
      completion(true)
    }
  }
  
  func userLogOut (completion: @escaping ((Bool)-> Void)) {
    do {
      try FirebaseAuth.Auth.auth().signOut()
      completion(true)
    } catch {
      completion(false)
      appError = error
    }
    
  }
  
}
