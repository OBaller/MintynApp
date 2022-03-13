//
//  SettingsModel.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import Foundation
import UIKit

struct SettingsModel {
  let icon: UIImage?
  let title: String
  var profileSettings: [String]?
}

let settingsData: [SettingsModel] = [
  SettingsModel(icon: AppImage.profileAvatar, title: AppStringResource.profileTitle, profileSettings: [AppStringResource.profileSetting0, AppStringResource.profileSetting1, AppStringResource.profileSetting2, AppStringResource.profileSetting3]),
  SettingsModel(icon: AppImage.creditCardIcon, title: AppStringResource.accountManagementTitle),
  SettingsModel(icon: AppImage.speakerIcon, title: AppStringResource.referralsTitle),
  SettingsModel(icon: AppImage.CheckerboardIcon, title: AppStringResource.legalTitle),
  SettingsModel(icon: AppImage.squareAndPencilIcon, title: AppStringResource.helpAndSupportTitle),
  SettingsModel(icon: AppImage.docIcon, title: AppStringResource.systemTitle),
  SettingsModel(icon: AppImage.arrowTriangleIcon, title: AppStringResource.createBusinessAccountTitle),
  SettingsModel(icon: AppImage.rectanglePortraitIcon, title: AppStringResource.logout)
]
