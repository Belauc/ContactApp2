//
//  Models.swift
//  ContactApp
//
//  Created by sergey on 13.01.2022.
//

import Foundation

struct Person {
    var name: String
    var lastName: String
    var email: String
    var number: String
    var fullname: String {
        return " \(name) \(lastName)"
    }
    
    init(name: String, lastName: String, email: String, number: String) {
        self.name = name
        self.lastName = lastName
        self.email = email
        self.number = number
    }
    init() {
        self.name = ""
        self.lastName = ""
        self.email = ""
        self.number = ""
    }
    

}

enum rowInSection: CaseIterable {
    case email
    case number
}

class DataManager {
    var name: [String] = []
    var lastName: [String] = []
    var email: [String] = []
    var number: [String] = []
    
    init() {
        updateData()
    }
    
    private func updateData(){
        self.name = ["Vitya", "Ivan", "Sergey"]
        self.lastName = ["Bely","konish","Popov"]
        self.email = ["adasdas@mail.ru","ddwq123@mail.ru","vnaerdf@mail.ru"]
        self.number = ["122133213","2321321323","123123123"]
    }
    
    private func getUnicRandomName() -> String {
        let result = name.randomElement()
        guard let index = name.firstIndex(where: {$0 == result}) else { return "" }
        self.name.remove(at: index)
        return result ?? "Result is error"
    }
    private func getUnicRandomlastName() -> String {
        let result = lastName.randomElement()
        guard let index = lastName.firstIndex(where: {$0 == result}) else { return "" }
        self.lastName.remove(at: index)
        return result ?? "Result is error"
    }
    private func getUnicRandomEmail() -> String {
        let result = email.randomElement()
        guard let index = email.firstIndex(where: {$0 == result}) else { return "" }
        self.email.remove(at: index)
        return result ?? "Result is error"
    }
    private func getUnicRandomNumber() -> String {
        let result = number.randomElement()
        guard let index = number.firstIndex(where: {$0 == result}) else { return "" }
        self.number.remove(at: index)
        return result ?? "Result is error"
    }

    func getListPerson() -> [Person] {
        var listPerson: [Person] = []
        for _ in name {
            listPerson.append(Person(name: getUnicRandomName(), lastName: getUnicRandomlastName(), email: getUnicRandomEmail(), number: getUnicRandomNumber()))
        }
        updateData()
        return listPerson
    }
}
