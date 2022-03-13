//
//  AppFont.swift
//  MintynApp
//
//  Created by naseem on 13/03/2022.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - Set the different Font Style and Sizes 
private let familyName = "SFBrown"

enum AppFont: String {
  case light = "Light"
  case regular = "Regular"
  case thin = "Thin"
  
  func size(_ size: CGFloat) -> UIFont {
    if let font = UIFont(name: fullFontName, size: size + 1.0) {
      return font
    }
    fatalError("Font '\(fullFontName)' does not exist.")
  }
  
  func size(_ size: CGFloat) -> Font {
    let font = Font.custom(fullFontName, size: size)
    return font
  }
  
  fileprivate var fullFontName: String {
    return rawValue.isEmpty ? familyName : familyName + "-" + rawValue
  }
  
  //Sample usage defined here
  //self.titleLabel?.font = AppFont.regular.size(12.0)
}
