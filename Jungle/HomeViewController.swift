//
//  HomeViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 12/29/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import UIKit

struct FeedData {
    let cell: Int!
    let name: String!
    let votes: Int!
    let image: UIImage!
    let profile: UIImage!
    let location: String!
    let isOrg: Bool!
}

struct EventData {
    let ngo: String!
    let eventTitle: String!
    let eventDate: NSDate!
    let eventPicture: UIImage!
    let participants: Int!
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var feedDataArray = [FeedData]()
    var eventDataArray = [EventData]()
    
    @IBOutlet weak var contentTableView: UITableView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Placeholder array of Cell Data. Beta version will populate this with data from Facebook
        // and other social networks available

        feedDataArray = [FeedData(cell: 1, name: "Jeremy Johnson", votes: 50, image: #imageLiteral(resourceName: "amazonjungle"), profile: #imageLiteral(resourceName: "manprofilepic"), location: "San Francisco, CA", isOrg: false),
                         FeedData(cell: 2, name: "Maria Smith", votes: 129, image: #imageLiteral(resourceName: "undertheocean"), profile: #imageLiteral(resourceName: "ladyprofilepic"), location: "Atlanta, GA", isOrg: true),
                         FeedData(cell: 3, name: "Marshall Mathers", votes: 5002, image: #imageLiteral(resourceName: "outerspace"), profile: #imageLiteral(resourceName: "manprofilepic"), location: "Seattle, WA", isOrg: false)]
        
        eventDataArray = [EventData(ngo: "California Stormwatchers", eventTitle: "Regional Cleaup", eventDate: NSDate.init(timeIntervalSinceNow: 0), eventPicture: #imageLiteral(resourceName: "outerspace"), participants: 2839),
                          EventData(ngo: "Gulf Protection Coalition", eventTitle: "Drain the Swamp", eventDate: NSDate.init(timeIntervalSinceNow: 232832), eventPicture: #imageLiteral(resourceName: "undertheocean"), participants: 98722),
                          EventData(ngo: "Priciples of Cleanliness", eventTitle: "Sweep the Streets", eventDate: NSDate.init(timeIntervalSinceNow: 2308432), eventPicture: #imageLiteral(resourceName: "forestjungle"), participants: 720382)]
        

        self.contentTableView.delegate = self
        self.contentTableView.dataSource = self

        // Setup our refesh control
        self.contentTableView.refreshControl?.addTarget(self, action: #selector(HomeViewController.handleRefresh(refreshControl:)), for: UIControlEvents.valueChanged)
        
    }
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        // Real implementation will fetch feed from database
        self.contentTableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // If we are in the first segment return the number of entries in the Feed array
        if (segmentControl.selectedSegmentIndex == 0) {
            return feedDataArray.count
        }
        
        
        return eventDataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Check which nib we want to population our tableview with
        
        if (segmentControl.selectedSegmentIndex == 0) {
            
            let cell = Bundle.main.loadNibNamed("FeedTableViewCell", owner: self, options: nil)?.first as! FeedTableViewCell
            
            cell.postImageView.image = feedDataArray[indexPath.row].image
            cell.votesLabel.text = String(feedDataArray[indexPath.row].votes)
            cell.nameLabel.text = feedDataArray[indexPath.row].name
            cell.profileImageView.image = feedDataArray[indexPath.row].profile
            
            cell.locationLabel.text = feedDataArray[indexPath.row].location
            
            // Set the organization star if appropriate
            if (feedDataArray[indexPath.row].isOrg!) {
                cell.organizationStarImageView.image = #imageLiteral(resourceName: "Star")
            }
            
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("EventTableViewCell", owner: self, options: nil)?.first as! EventTableViewCell
            
            cell.eventPicture.image = eventDataArray[indexPath.row].eventPicture
            cell.eventPicture.contentMode = .scaleAspectFill
            cell.participantsLabel.text = String(eventDataArray[indexPath.row].participants)
            cell.ngoLabel.text = eventDataArray[indexPath.row].ngo
            cell.eventTitleLabel.text = eventDataArray[indexPath.row].eventTitle
            
            let dateFormatter = DateFormatter()
            //dateFormatter.dateFormat = "EEE, dd MMM yyyy hh:mm:ss +zzzz"
            //let dateObj = dateFormatter.date(from: String(describing: eventDataArray[indexPath.row].eventDate))!
            dateFormatter.dateFormat = "MM-dd-yyyy"
            
            cell.eventDateLabel.text = dateFormatter.string(from: eventDataArray[indexPath.row].eventDate as Date)
            
            
            return cell
        }

    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (segmentControl.selectedSegmentIndex == 0) {
            return 300
        }
        
        return 240
    }
    

    @IBAction func segmentControlChange(_ sender: AnyObject) {
        
        // Reload out data when the user switches between 'Feed' and 'Events' tab
        contentTableView.reloadData()
    }
    
    
    
}
