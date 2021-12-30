//
//  SectionsTableViewController.swift
//  Contacts
//
//  Created by Kuat Bodikov on 29.12.2021.
//

import UIKit

class SectionsTableViewController: UITableViewController {

    var contacts: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(contacts[section].title)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionsTableViewController", for: indexPath)
        let person = contacts[indexPath.row]
        let imagePhone = UIImage(systemName: "phone")
        let email = UIImage(systemName: "at")
        
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0: content.image = imagePhone
            content.text = person.phone
        default:
            content.image = email
            content.secondaryText = "e-mail: \(person.email)"
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
