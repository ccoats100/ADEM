//
//  ListTableViewCell.swift
//  ADEM Searchbar
//
//  Created by Coleman Coats on 3/24/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
	@IBOutlet weak var itemName: UILabel!
	@IBOutlet weak var price: UILabel!
	@IBOutlet weak var totalPrice: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	@IBOutlet weak var itemImage: UIButton!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
