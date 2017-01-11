//
//  QuoraTableViewCell.swift
//  Jungle
//
//  Created by Jesse Bartola on 1/9/17.
//  Copyright © 2017 Jungle. All rights reserved.
//

import UIKit

class QuoraTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var followingButton: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var voteUpButton: UIButton!
    @IBOutlet weak var voteDownButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Save space and make the labels look nice
        
        //questionLabel.sizeToFit()
        //answerLabel.sizeToFit()
//        questionLabel.lineBreakMode = .byClipping
//        answerLabel.lineBreakMode = .byClipping

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func toggleFollowing(_ sender: AnyObject) {
        if ((followingButton.backgroundImage(for: UIControlState.normal)) == #imageLiteral(resourceName: "HeartEmpty")) {
            followingButton.setBackgroundImage(#imageLiteral(resourceName: "HeartFilled"), for: UIControlState.normal)
        } else {
            followingButton.setBackgroundImage(#imageLiteral(resourceName: "HeartEmpty"), for: UIControlState.normal)
        }
        
    }
}
