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
    "87784047979", "87025678001", "87011558834", "87777327979",
    "87132237590", "87750699210", "87053779210", "87012241218",
    "87132777137", "87172777025"
    ]
    
    private init() {}
}
