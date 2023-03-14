//
//  ContactListUITableViewController.swift
//  Contact List
//
//  Created by Elizabeth on 13/03/2023.
//

import UIKit

class ContactListUITableViewController: UITableViewController {
    
    var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailedContactViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.contact = personList[indexPath.row]
            }
        
}
// MARK: UITableViewDatasource
extension ContactListUITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = personList[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
}

    

