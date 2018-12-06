//
//  CustomTableViewCell.swift
//  Pong
//
//  Created by BOUNAIX Vincent on 06/12/2018.
//  Copyright © 2018 BOUNAIX Vincent. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label:  UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
