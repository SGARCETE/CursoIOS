//
//  MyReusableTableViewCell.swift
//  TableViewSample
//
//  Created by Federico Tuckey on 12/21/16.
//  Copyright © 2016 mercadolibre. All rights reserved.
//

import UIKit

class MyReusableTableViewCell: UITableViewCell {

    @IBOutlet weak var myText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
