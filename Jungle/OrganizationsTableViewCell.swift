//
//  OrganizationsTableViewCell.swift
//  Jungle
//
//  Created by Jesse Bartola on 1/11/17.
//  Copyright © 2017 Jungle. All rights reserved.
//

import UIKit

class OrganizationsTableViewCell: UITableViewCell {

    @IBOutlet weak var organizationNameLabel: UILabel!
    @IBOutlet weak var openEventsLabel: UILabel!
    @IBOutlet weak var hostedEventsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
