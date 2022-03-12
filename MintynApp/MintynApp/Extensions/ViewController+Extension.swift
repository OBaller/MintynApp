//
//  ViewController+Extension.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

extension UIViewController {
  
  func showAlert (alertText: String, alertMessage: String) {
    let alert = UIAlertController(title: alertText, message: alertMessage, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Got it", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  
}
