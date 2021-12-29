//
//  PersonDetailsViewController.swift
//  Contacts
//
//  Created by Kuat Bodikov on 29.12.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personDetails.title
        phoneLabel.text = "phone number: \(personDetails.phone)"
        emailLabel.text = "e-mail: \(personDetails.email)"
        
    }
    
    
    
}
