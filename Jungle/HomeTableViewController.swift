////
////  HomeTableViewController.swift
////  Jungle
////
////  Created by Jesse Bartola on 12/29/16.
////  Copyright © 2016 Jungle. All rights reserved.
////
//
//import UIKit
//
//struct CellData {
//    let cell: Int!
//    let name: String!
//    let votes: Int!
//    let image: UIImage!
//    let profile: UIImage!
//    let location: String!
//    let isOrg: Bool!
//}
//
//class HomeTableViewController: UITableViewController {
//    
//    var cellDataArray = [CellData]()
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Placeholder array of Cell Data. Beta version will populate this with data from Facebook
//        // and other social networks available
//        
//        cellDataArray = [CellData(cell: 1, name: "Jeremy Johnson", votes: 50, image: #imageLiteral(resourceName: "amazonjungle"), profile: #imageLiteral(resourceName: "manprofilepic"), location: "San Francisco, CA", isOrg: false),
//                         CellData(cell: 2, name: "Maria Smith", votes: 129, image: #imageLiteral(resourceName: "undertheocean"), profile: #imageLiteral(resourceName: "ladyprofilepic"), location: "Atlanta, GA", isOrg: true),
//                         CellData(cell: 3, name: "Marshall Mathers", votes: 5002, image: #imageLiteral(resourceName: "outerspace"), profile: #imageLiteral(resourceName: "manprofilepic"), location: "Seattle, WA", isOrg: false)]
//        
//        
//        
//        // Gives the status bar room to breathe
//        tableView.contentInset.top = 20
//        
//        // Setup our refesh control
//        self.refreshControl?.addTarget(self, action: #selector(HomeTableViewController.handleRefresh(refreshControl:)), for: UIControlEvents.valueChanged)
//
//    }
//    
//    func handleRefresh(refreshControl: UIRefreshControl) {
//        // Real implementation will fetch feed from database
//        self.tableView.reloadData()
//        refreshControl.endRefreshing()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    /*override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }*/
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        return cellDataArray.count
//    }
//
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//        let cell = Bundle.main.loadNibNamed("HomeTableViewCell", owner: self, options: nil)?.first as! HomeTableViewCell
//        
//        cell.postImageView.image = cellDataArray[indexPath.row].image
//        cell.votesLabel.text = String(cellDataArray[indexPath.row].votes)
//        cell.nameLabel.text = cellDataArray[indexPath.row].name
//        
//        //cell.layoutIfNeeded()
//        //cell.profileImageView.layer.cornerRadius = cell.profileImageView.frame.height / 2.0
//        
//        cell.profileImageView.image = cellDataArray[indexPath.row].profile
//
//        cell.locationLabel.text = cellDataArray[indexPath.row].location
//        if (cellDataArray[indexPath.row].isOrg!) {
//            cell.organizationStarImageView.image = #imageLiteral(resourceName: "Star")
//        }
//        
//        return cell
//    }
// 
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300
//    }
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
