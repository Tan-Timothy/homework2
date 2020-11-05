//
//  TableViewController.swift
//  homework2
//
//  Created by User on 2020/11/5.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var name = ["watermellon", "apple", "orange", "strawberry", "pear"]
    var image = ["fruit", "fruit", "fruit", "fruit", "fruit"]
    var num = ["500", "100", "90", "200", "150"]
    
    @IBOutlet var myLable: UILabel!
    
    var IsVisited = Array(repeating: false, count: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celldentify = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: celldentify, for: indexPath) as! TableViewCell

        // Configure the cell...
        
        cell.nameLable?.text = name[indexPath.row]
        cell.numLable?.text = num[indexPath.row]
        cell.thumbnailimageView?.image = UIImage(named: image[indexPath.row])
        
        if IsVisited[indexPath.row]{
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
        cell.accessoryType = IsVisited[indexPath.row] ? .checkmark :.none
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        var total = 0
        let cell = tableView.cellForRow(at: indexPath)
        if self.IsVisited[indexPath.row] == false{
            cell?.accessoryType = .checkmark
            self.IsVisited[indexPath.row] = true
        }else{
            cell?.accessoryType = .none
            self.IsVisited[indexPath.row] = false
        }
        for i in 0...(name.count-1){
            if IsVisited[i] == true{
                total = total + Int(num[i])!
            }
        }
        /*
        let optionMenu = UIAlertController(title: nil, message: "Check?", preferredStyle: .actionSheet)
        
        let checkInAction = UIAlertAction(title: "check", style: .default, handler: {(action:UIAlertAction!) -> Void in
            
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .checkmark
            self.IsVisited[indexPath.row] = true
            
        })
        optionMenu.addAction(checkInAction)
        
        let uncheckInAction = UIAlertAction(title: "uncheck", style: .default, handler: {(action:UIAlertAction!) -> Void in
            
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .none
            self.IsVisited[indexPath.row] = false
            
        })
        optionMenu.addAction(uncheckInAction)
        */
        
        
        myLable.text = "Total prices = " + String(total)

    }
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        present(optionMenu, animated: true, completion: nil)
        
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
