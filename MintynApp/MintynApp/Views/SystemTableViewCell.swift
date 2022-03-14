//
//  SystemTableViewCell.swift
//  MintynApp
//
//  Created by naseem on 13/03/2022.
//

import UIKit

class SystemTableViewCell: UITableViewCell {
  @IBOutlet weak var checkImage: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
