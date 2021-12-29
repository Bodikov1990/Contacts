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
        1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionsTableViewController", for: indexPath)
        let person = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "phone: \(person.phone)"
        content.secondaryText = "e-mail: \(person.email)"
        
        cell.contentConfiguration = content
        
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
    }

}
