//
//  ViewController.swift
//  UserDefaults_Address
//
//  Created by Олеся Егорова on 17.05.2021.
//

import UIKit


class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var houseField: UITextField!
    @IBOutlet weak var buildField: UITextField!
    @IBOutlet weak var flatField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func saveAction(_ sender: UIButton) {
        
        let city = cityField.text!
        let street = streetField.text!
        let house = houseField.text!
        let build = buildField.text!
        let flat = flatField.text!
        
        if !city.isEmpty && !street.isEmpty && !house.isEmpty && !flat.isEmpty {
            
            Base.shared.saveAddress(city: city, street: street, house: house, build: build, flat: flat)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}

