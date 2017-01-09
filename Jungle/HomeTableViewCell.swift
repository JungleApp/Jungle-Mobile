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
    @IBOutlet weak var voteUpButton: UIButton!
    @IBOutlet weak var voteDownButton: UIButton!
    
    @IBOutlet weak var organizationStarImageView: UIImageView!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        //profileImageView.layer.cornerRadius = profileImageView.frame.height / 2.0
        //profileImageView.clipsToBounds = true
    }
    
    @IBAction func voteUpTouchDown(_ sender: AnyObject) {
        voteUpButton.alpha = 0.4
    }
    
    @IBAction func voteUpTouch(_ sender: AnyObject) {
        votesLabel.text = "\(Int(votesLabel.text!)! + 1)"
        print("Voted up for \(nameLabel.text!)!")
        voteUpButton.alpha = 1.0
    }
    
    @IBAction func voteDownTouchDown(_ sender: AnyObject) {
        voteDownButton.alpha = 0.4
    }
    
    
    @IBAction func voteDownTouch(_ sender: AnyObject) {
        votesLabel.text = "\(Int(votesLabel.text!)! - 1)"
        print("Voted down for \(nameLabel.text!)!")
        voteDownButton.alpha = 1.0
    }
    
    
}
