//
//  ViewController.swift
//  RandomDigit+NavigationController
//
//  Created by Grigory Don on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var maximumValueLable: UILabel!
    @IBOutlet weak var minimumValueLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad( )
        
        
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        
        settingsVC.minimumValue = minimumValueLable.text
        settingsVC.maximumValue = maximumValueLable.text
    }
    @IBAction func resultButtonPressed() {
        let minValue = Int(minimumValueLable.text ?? "") ?? 0
        let maxValue = Int(maximumValueLable.text ?? "") ?? 100
        
        resultLable.text = Int.random(in: minValue...maxValue).formatted()
    }
}
