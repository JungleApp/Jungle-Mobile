//
//  OrganizationsViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 12/23/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import Foundation
import UIKit

struct Organization {
    let name: String!
    let events: Int!
    let ongoing: Int!
}

class OrganizationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var orgTableView: UITableView!
    
    var orgDataArray = [Organization]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orgDataArray = [Organization(name: "Principles of Cleanliness", events: 52, ongoing: 2), Organization(name: "Gulf Protection Coalition", events: 203, ongoing: 8), Organization(name: "California Stormwatchers", events: 12, ongoing: 0)]
        
        self.orgTableView.delegate = self
        self.orgTableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return orgDataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("OrganizationTableViewCell", owner: self, options: nil)?.first as! OrganizationsTableViewCell
        
        cell.organizationNameLabel.text = orgDataArray[indexPath.row].name
        cell.openEventsLabel.text = String(orgDataArray[indexPath.row].ongoing)
        cell.hostedEventsLabel.text = String(orgDataArray[indexPath.row].events)
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    
}

