//
//  ContactsTableViewController.swift
//  ContactApp
//
//  Created by sergey on 13.01.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    let dataManager = DataManager()
    lazy var personList = dataManager.getListPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ViewController else {
            return
        }
        destination.hidesBottomBarWhenPushed = true
        guard let indexPath = tableView.indexPathForSelectedRow?.row else {
            print("Error")
            return
        }
        destination.person = personList[indexPath]
    }
    

}
