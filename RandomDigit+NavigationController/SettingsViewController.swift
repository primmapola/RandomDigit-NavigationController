//
//  SettingsViewController.swift
//  RandomDigit+NavigationController
//
//  Created by Grigory Don on 30.09.2022.
//

import UIKit

final class SettingsViewController: UIViewController {

    @IBOutlet weak var minimumValueTF: UITextField!
    @IBOutlet weak var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    

    
    @IBAction func cancelPressed(_ sender: Any) {
    }
}
