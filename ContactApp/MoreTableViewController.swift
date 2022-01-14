//
//  MoreTableViewController.swift
//  ContactApp
//
//  Created by sergey on 13.01.2022.
//

import UIKit

class MoreTableViewController: UITableViewController {
    
    let dataManager = DataManager()
    lazy var personList = dataManager.getListPerson()
    let idCell = "cellForMore"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "MoreTableViewCell", bundle: nil) , forCellReuseIdentifier: idCell)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowInSection.allCases.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].fullname
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath) as! MoreTableViewCell
        let person = personList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.label.text = person.number
        default:
            cell.label.text = person.email
        }

        return cell
    }
    



}
