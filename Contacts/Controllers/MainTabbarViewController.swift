//
//  TabbarViewController.swift
//  Contacts
//
//  Created by Kuat Bodikov on 29.12.2021.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    var contacts = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
            
                guard let viewControllers = self.viewControllers else { return }
                for controller in viewControllers {
                    if let personsNavigationVC = controller as? UINavigationController {
                        if let contactVC = personsNavigationVC.topViewController as? ContactsTableViewController {
                            contactVC.contacts = contacts
                        } else if let sectionVC = personsNavigationVC.topViewController as? SectionsTableViewController {
                            sectionVC.contacts = contacts
                        }
                    }
                }
            }
    
}
