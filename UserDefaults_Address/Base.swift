//
//  Base.swift
//  UserDefaults_Address
//
//  Created by Олеся Егорова on 17.05.2021.
//

import Foundation

class Base {
    
    let defaults = UserDefaults.standard
    
    static let shared = Base()
    
    struct UserAddress: Codable {
        var city: String
        var street: String
        var house: String
        var build: String?
        var flat: String
        var name: String{
            return "\(city), \(street), дом \(house)  \(build ?? ""),  кв. \(flat)"
        }
    }
    
    var addresses: [UserAddress] {
        get {
            if let data = defaults.value(forKey: "addresses") as? Data{
                return try! PropertyListDecoder().decode([UserAddress].self, from: data)
            } else {
                return [UserAddress]()
            }
        }
        
        set {
            if let data = try? PropertyListEncoder().encode(newValue){
                defaults.set(data, forKey: "addresses")
            }
        }
    }
    
    func saveAddress(city: String, street: String, house: String, build: String!, flat: String){
        let address = UserAddress(city: city, street: street, house: house, build: build, flat: flat)
        addresses.insert(address, at: 0)
    }
}
