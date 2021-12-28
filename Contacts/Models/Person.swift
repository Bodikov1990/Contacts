//
//  Person.swift
//  Contacts
//
//  Created by Kuat Bodikov on 28.12.2021.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var title: String {
        "\(name) \(surname)"
    }
}


extension Person {
    static func getContact() -> [Person] {
        var persons: [Person] = []
        
        for _ in 1...10 {
            let person = Person(name: "\(DataManager.shared.names.randomElement() ?? "")",
                                surname: "\(DataManager.shared.surnames.randomElement() ?? "")",
                                phone: "\(DataManager.shared.phones.randomElement() ?? "")",
                                email: "\(DataManager.shared.emails.randomElement() ?? "")")
        
            persons.append(person)
        }
        return persons
    }
    
}
