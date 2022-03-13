//
//  CreateAccountViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class CreateAccountViewController: UIViewController {
  @IBOutlet weak var phoneNumberTextField: UITextField!
  @IBOutlet weak var greyBackgroundView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    styleGreyBackgroundView()
  }
  
  private func styleGreyBackgroundView () {
    greyBackgroundView.clipsToBounds = true
    greyBackgroundView.layer.cornerRadius = greyBackgroundView.frame.size.width / 10.0
    greyBackgroundView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
  }
  
  
  @IBAction func continueButtonTapped(_ sender: UIButton) {
    
  }
}
