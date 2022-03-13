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
    TransactionModel(transactionIcon: "addIcon", transactionTitle: "Top Up"),
    TransactionModel(transactionIcon: "pay", transactionTitle: "Pay Bill"),
    TransactionModel(transactionIcon: "PiggyInvest", transactionTitle: "Save Money"),
    TransactionModel(transactionIcon: "inflationIcon", transactionTitle: "Invest /nInvest"),
    TransactionModel(transactionIcon: "fundIcon", transactionTitle: "Loan"),
    TransactionModel(transactionIcon: "piggyBank", transactionTitle: "Business Account"),
    TransactionModel(transactionIcon: "menu", transactionTitle: "More")
]
