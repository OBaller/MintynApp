//
//  ProductsCollectionViewCell.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var serviceTitleLabel: UILabel!
  @IBOutlet weak var comingSoonLabel: UILabel!
  
  func configureCell (with model: ProductsCellModel) {
      imageView.image = UIImage(systemName: model.image)
      serviceTitleLabel.text = model.title
      
  }
}
