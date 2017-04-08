//
//  EventTableViewCell.swift
//  Jungle
//
//  Created by Jesse Bartola on 1/10/17.
//  Copyright © 2017 Jungle. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var eventPicture: UIImageView!
    @IBOutlet weak var participantsLabel: UILabel!
    @IBOutlet weak var ngoLabel: UILabel!
    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
