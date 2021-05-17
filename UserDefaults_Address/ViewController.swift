//
//  ViewController.swift
//  UserDefaults_Address
//
//  Created by Олеся Егорова on 17.05.2021.
//

import UIKit

struct KeysDefaults {
    static let keyCity = "city"
    static let keyStreet = "street"
    static let keyHouse = "house"
    static let keyBuild = "build"
    static let keyFlat = "flat"
}

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var houseField: UITextField!
    @IBOutlet weak var buildField: UITextField!
    @IBOutlet weak var flatField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityField.text = defaults.string(forKey: KeysDefaults.keyCity)
        streetField.text = defaults.string(forKey: KeysDefaults.keyStreet)
        houseField.text = defaults.string(forKey: KeysDefaults.keyHouse)
        buildField.text = defaults.string(forKey: KeysDefaults.keyBuild)
        flatField.text = defaults.string(forKey: KeysDefaults.keyFlat)
        
    }

    @IBAction func saveAction(_ sender: UIButton) {
        
        let city = cityField.text!
        let street = streetField.text!
        let house = houseField.text!
        let build = buildField.text!
        let flat = flatField.text!
        
        if !city.isEmpty && !street.isEmpty && !house.isEmpty && !flat.isEmpty {
            defaults.set(city, forKey: KeysDefaults.keyCity)
            defaults.set(street, forKey: KeysDefaults.keyStreet)
            defaults.set(house, forKey: KeysDefaults.keyHouse)
            defaults.set(build, forKey: KeysDefaults.keyBuild)
            defaults.set(flat, forKey: KeysDefaults.keyFlat)
        }
        
    }
    
}

