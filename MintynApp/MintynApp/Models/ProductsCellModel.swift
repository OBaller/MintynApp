//
//  ProductsCellModel.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import Foundation

struct ProductsCellModel {
  let title: String
  let image: String
}

let productsCellModels: [ProductsCellModel] = [
  ProductsCellModel(title: "Mintyn Insurance", image: "checkerboard.shield"),
  ProductsCellModel(title: "Open an Account", image: "checkerboard.shield"),
  ProductsCellModel(title: "Register your business", image: "doc.text"),
  ProductsCellModel(title: "Contact Support", image: "person.fill.questionmark")
]
