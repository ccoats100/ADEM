//
//  TotalPriceTableViewCell.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class TotalPriceTableViewCell: UITableViewCell {
	@IBOutlet weak var itemName: UILabel!
	@IBOutlet weak var itemPrice: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
