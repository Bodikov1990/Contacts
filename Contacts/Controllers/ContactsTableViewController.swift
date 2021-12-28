//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Kuat Bodikov on 28.12.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    private var contact = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsTableViewController", for: indexPath)

        let person = contact[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.secondaryText = person.surname
        
        cell.contentConfiguration = content

        return cell
    }
    

}

//extension ContactsTableViewController {
//    private func chooseController() {
//            guard let viewControllers = viewControllers else { return }
//            for controller in viewControllers {
//                if let personVC = controller as? PersonsListViewController {
//                    personVC.persons = persons
//                } else {
//                    if let contactVC = controller as? ContactListViewController {
//                        contactVC.persons = persons
//                    }
//                }
//                
//            }
//        }
//
//}
