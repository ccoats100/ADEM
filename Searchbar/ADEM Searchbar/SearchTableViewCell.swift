


//
//  SearchTableViewCell.swift
//  ADEM Searchbar
//
//  Created by Coleman Coats on 4/6/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
	@IBOutlet weak var itemName: UILabel!
	@IBOutlet weak var itemPrice: UILabel!

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
