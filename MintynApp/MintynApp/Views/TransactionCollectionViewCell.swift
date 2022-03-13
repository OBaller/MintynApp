//
//  TransactionCollectionViewCell.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import UIKit

class TransactionCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var transactionImage: UIImageView!
  @IBOutlet weak var transactionTitle: UILabel!
  
  func configureTransactionCell (with model: TransactionModel) {
    transactionImage.image = model.transactionIcon
    transactionTitle.text = model.transactionTitle
  }
}
