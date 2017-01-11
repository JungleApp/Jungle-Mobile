//
//  GroupsViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 12/23/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import Foundation
import UIKit

struct QuoraData {
    let question: String!
    let answer: String!
    let votes: Int!
    let following: Bool!
    let profile: UIImage!
}

class QuoraViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var quoraDataArray = [QuoraData]()
    
    @IBOutlet weak var quoraTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoraDataArray = [QuoraData(question: "What happens when the ozone layer ceases to exist?", answer: "As the ozone layer becomes depleted with each and every passing year, there is only a finite amount of time we have to prepare for the end...", votes: 283, following: false, profile: #imageLiteral(resourceName: "ladyprofilepic")), QuoraData(question: "Why don't glaciers melt during the summer?", answer: "The temperatures at the poles don't typically make it above 0 degrees farenheit, so glaciers wont melt during summer, winter, spring or autmn.", votes: -50, following: true, profile: #imageLiteral(resourceName: "manprofilepic")), QuoraData(question: "Has the rate of deforestation in Latin America gone up or down in the last 20 years?", answer: "Deforestation is an incredibly dangerous process brought about by the cultivation of plants and mass agricultural expansion in...", votes: 8943, following: false, profile: #imageLiteral(resourceName: "ladyprofilepic"))]
        
        quoraTableView.delegate = self
        quoraTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return quoraDataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("QuoraTableViewCell", owner: self, options: nil)?.first as! QuoraTableViewCell
        
        cell.profileImageView.image = quoraDataArray[indexPath.row].profile
        
        cell.votesLabel.text = String(quoraDataArray[indexPath.row].votes)
        
        cell.questionLabel.text = quoraDataArray[indexPath.row].question
        
        cell.answerLabel.text = quoraDataArray[indexPath.row].answer
        
        if (quoraDataArray[indexPath.row].following!) {
            cell.followingButton.setBackgroundImage(#imageLiteral(resourceName: "HeartFilled"), for: UIControlState.normal)
        } else {
            cell.followingButton.setBackgroundImage(#imageLiteral(resourceName: "HeartEmpty"), for: UIControlState.normal)
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    
}

