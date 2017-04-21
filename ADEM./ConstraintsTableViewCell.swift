//
//  ConstraintsTableViewCell.swift
//  ADEM.
//
//  Created by Coleman Coats on 3/30/17.
//  Copyright © 2017 Coleman Coats. All rights reserved.
//

import UIKit

class ConstraintsTableViewCell: UITableViewCell {
	@IBOutlet weak var constraint: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	
	@IBAction func restriction(_ sender: Any) {
	}


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
