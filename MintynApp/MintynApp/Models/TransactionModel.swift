//
//  TransactionModel.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import Foundation
import UIKit


struct TransactionModel {
  let transactionIcon: UIImage?
  let transactionTitle: String
}

let transactionModel: [TransactionModel] = [
  TransactionModel(transactionIcon: AppImage.transferFundsIcon, transactionTitle: AppStringResource.transferString),
  TransactionModel(transactionIcon: AppImage.topUpIcon, transactionTitle: AppStringResource.topUpString),
  TransactionModel(transactionIcon: AppImage.payBillIcon, transactionTitle: AppStringResource.payBillString),
  TransactionModel(transactionIcon: AppImage.saveMoneyIcon, transactionTitle: AppStringResource.saveMoneyString),
  TransactionModel(transactionIcon: AppImage.mintynInvestIcon, transactionTitle: AppStringResource.investString),
  TransactionModel(transactionIcon: AppImage.loanIcon, transactionTitle: AppStringResource.loanString),
  TransactionModel(transactionIcon: AppImage.businessAccountIcon, transactionTitle: AppStringResource.businessAccountString),
  TransactionModel(transactionIcon: AppImage.mintynMenuIcon, transactionTitle: AppStringResource.moreString)
]
