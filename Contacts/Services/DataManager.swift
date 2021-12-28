//
//  DataManager.swift
//  Contacts
//
//  Created by Kuat Bodikov on 28.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Tim", "ted",
        "Steven", "Sharon", "Nicols",
        "Allen", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Burler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
    "jaskdan@mail.ru", "jefkejbfe@gmail.com", "edufbjkb@mai.ru",
    "wfn@mail.ru", "eklnfn@gmail.com", "dkljn@gmail.com",
    "ekf@mail.ru", "djbn@mail.ru", "djncldknc@mail.ru",
    "jnfjn@mail.ru"
    ]
    
    let phones = [
    "88489101", "8237402", "23940902", "3294809",
    "2934273", "2398423", "2389472", "0239409280",
    "12932174", "921343827"
    ]
    
    private init() {}
}
