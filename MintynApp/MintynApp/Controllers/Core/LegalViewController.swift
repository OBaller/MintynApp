//
//  LegalViewController.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit


class LegalViewController: UIViewController {
  @IBOutlet weak var termsAndConditionLinkView: UITextView!
  @IBOutlet weak var privacyPolicyLinkView: UITextView!
  @IBOutlet weak var savingGoalTermsAndConditionsLinkView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    WebLinksSetUp()
    
  }
  
  
  
  func WebLinksSetUp() {
    
    let termsAndConditionLink = AppStringResource.termsAndConditionLink
    let privacyLink = AppStringResource.privacyLink
    let savingsGoalLink = AppStringResource.savingsGoalLink
    
    let text1 = AppStringResource.termsAndConditionString
    let text2 = AppStringResource.privacyString
    let text3 = AppStringResource.savingGoalTermsString
    
    let mintAccAttributedString = NSAttributedString.makeHyperLink(for: termsAndConditionLink, in: text1, as: text1)
    
    let privacyAttributedString = NSAttributedString.makeHyperLink(for: privacyLink, in: text2, as: text2)
    let savingGoalsAttributtedString = NSAttributedString.makeHyperLink(for: savingsGoalLink, in: text3, as: text3)
    
    termsAndConditionLinkView.attributedText = mintAccAttributedString
    termsAndConditionLinkView.font = UIFont.systemFont(ofSize: 16)
    
    privacyPolicyLinkView.attributedText = privacyAttributedString
    privacyPolicyLinkView.font = UIFont.systemFont(ofSize: 16)
    
    savingGoalTermsAndConditionsLinkView.attributedText = savingGoalsAttributtedString
    savingGoalTermsAndConditionsLinkView.font = UIFont.systemFont(ofSize: 16)
    
    
  }
  
}
