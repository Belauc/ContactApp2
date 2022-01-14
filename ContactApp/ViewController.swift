//
//  ViewController.swift
//  ContactApp
//
//  Created by sergey on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var person: Person = Person()

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = person.fullname
        phoneLabel.text = "Phone: \(person.number)"
        emailLabel.text = "Email: \(person.email)"
    }


}

