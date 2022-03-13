//
//  TransactionModel.swift
//  MintynApp
//
//  Created by naseem on 12/03/2022.
//

import Foundation


struct TransactionModel {
    let transactionIcon: String
    let transactionTitle: String
}

let transactionModel: [TransactionModel] = [
    TransactionModel(transactionIcon: "transferFunds", transactionTitle: "Transfer"),
    TransactionModel(transactionIcon: "inflationIcon", transactionTitle: "Invest"),
    TransactionModel(transactionIcon: "pay", transactionTitle: "Pay Bill"),
    TransactionModel(transactionIcon: "PiggyInvest", transactionTitle: "Save Money"),
    TransactionModel(transactionIcon: "addIcon", transactionTitle: "Top Up"),
    TransactionModel(transactionIcon: "fundIcon", transactionTitle: "Borrow"),
    TransactionModel(transactionIcon: "menu", transactionTitle: "More")
]
