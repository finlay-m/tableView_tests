//
//  DemoTableViewCell.swift
//  Contacts
//
//  Created by Finlay MacGregor on 9/11/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

// instead of using the default cell, this allows us to design a cell for use with tableView
class DemoTableViewCell: UITableViewCell {
    
    //creating label and image (background color) for the cell
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

// good practice: set the identifier for the xib file to be the name of the file
// so in this case DemoTableViewCell

// setting lines to 0 for a label allows the label to line wrap
