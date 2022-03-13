//
//  ProductsCellModel.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import Foundation
import UIKit

struct ProductsCellModel {
  let title: String
  let image: UIImage?
}

let productsCellModels: [ProductsCellModel] = [
  ProductsCellModel(title: AppStringResource.mintynInsurance, image: AppImage.insuranceImage),
  ProductsCellModel(title: AppStringResource.openAccount, image: AppImage.openAccountImage),
  ProductsCellModel(title: AppStringResource.registerBusiness, image: AppImage.registerBusinessImage),
  ProductsCellModel(title: AppStringResource.contactSupport, image: AppImage.supportImage)
]
