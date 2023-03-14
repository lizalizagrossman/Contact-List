//
//  DataStore.swift
//  Contact List
//
//  Created by Elizabeth on 14/03/2023.
//
final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Raban",
        "Naum",
        "Sarah",
        "Ester",
        "Rosa",
        "Liza"
    ]
    
    let surnames = [
        "Goldberg",
        "Weizman",
        "Gamliel",
        "Gurion",
        "Shapiro",
        "Grossman"
    ]
    
    let emails = [
        "jjjj@mail.ru",
        "aaaa@mail.ru",
        "eeee@mail.ru",
        "hhhh@mail.ru",
        "wwww@mail.ru",
        "mmmm@mail.ru"
    ]
    
    let phoneNumbers = [
        "05344789",
        "056780078",
        "05366789",
        "0536678976",
        "053689765",
        "0536890954"
    ]
    
    private init() {}
}
