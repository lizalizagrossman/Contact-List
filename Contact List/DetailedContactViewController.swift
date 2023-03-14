//
//  DetailedContactViewController.swift
//  Contact List
//
//  Created by Elizabeth on 13/03/2023.
//

import UIKit

class DetailedContactViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "E-mail: \(contact.email)"
        navigationItem.title = "\(contact.fullName)"
    }

}
