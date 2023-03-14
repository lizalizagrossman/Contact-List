//
//  SectorsContactTableViewController.swift
//  Contact List
//
//  Created by Elizabeth on 13/03/2023.
//

import UIKit

class SectorsContactTableViewController: UITableViewController {
    
    var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(personList!)
    }
}
// MARK: UITableViewDataSource
extension SectorsContactTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact full", for: indexPath)
        
        let contact = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = contact.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "envelope")
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}

// MARK: UITableViewDelegate
extension SectorsContactTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let fullNameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width,
                height: 20)
        )
        fullNameLabel.text = personList[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        fullNameLabel.textColor = .white
        
        let contentView = UIView()
        contentView.addSubview(fullNameLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .lightGray
        
    }
}
    

 


