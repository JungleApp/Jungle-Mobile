//
//  HomeTableViewCell.swift
//  Jungle
//
//  Created by Jesse Bartola on 12/26/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var votesLabel: UILabel!
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBAction func voteUpTouch(_ sender: AnyObject) {
        print("Voted up!")
    }
    
    
    @IBAction func voteDownTouch(_ sender: AnyObject) {
        print("Voted down!")
    }
    
    
}
