//
//  UIApp+Extension.swift
//  MintynApp
//
//  Created by naseem on 14/03/2022.
//

import UIKit

extension UIApplication {
    
  // MARK: - Extension for deprecated UIApplication keyword
    var keyWindow: UIWindow? {
        // Get connected scenes
        return UIApplication.shared.connectedScenes
            // Keep only active scenes, onscreen and visible to the user
            .filter { $0.activationState == .foregroundActive }
            // Keep only the first `UIWindowScene`
            .first(where: { $0 is UIWindowScene })
            // Get its associated windows
            .flatMap({ $0 as? UIWindowScene })?.windows
            // Finally, keep only the key window
            .first(where: \.isKeyWindow)
    }
    
}
