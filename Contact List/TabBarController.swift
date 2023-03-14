//
//  TabBarController.swift
//  Contact List
//
//  Created by Elizabeth on 13/03/2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListUITableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectorsContactTableViewController else { return }
        
        let persons = Person.getPersonDetails()
        contactListVC.personList = persons
        sectionVC.personList = persons
    }

}
