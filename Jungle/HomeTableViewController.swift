//
//  HomeTableViewController.swift
//  Jungle
//
//  Created by Jesse Bartola on 12/29/16.
//  Copyright © 2016 Jungle. All rights reserved.
//

import UIKit

struct CellData {
    let cell: Int!
    let name: String!
    let votes: Int!
    let image: UIImage!
}

class HomeTableViewController: UITableViewController {
    
    var cellDataArray = [CellData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Placeholder array of Cell Data. Beta version will populate this with data from Facebook
        // and other social networks available
        
        cellDataArray = [CellData(cell: 1, name: "Jeremy Johnson", votes: 50, image: #imageLiteral(resourceName: "amazonjungle")),
                         CellData(cell: 2, name: "Maria Smith", votes: 129, image: #imageLiteral(resourceName: "undertheocean")),
                         CellData(cell: 3, name: "Marshall Mathers", votes: 5002, image: #imageLiteral(resourceName: "outerspace"))]
        
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellDataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = Bundle.main.loadNibNamed("HomeTableViewCell", owner: self, options: nil)?.first as! HomeTableViewCell
        
        cell.postImageView.image = cellDataArray[indexPath.row].image
        cell.votesLabel.text = String(cellDataArray[indexPath.row].votes)
        cell.nameLabel.text = cellDataArray[indexPath.row].name
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 254
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
