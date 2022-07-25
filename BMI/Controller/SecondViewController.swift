//
//  SecondViewController.swift
//  BMI
//
//  Created by user on 23/06/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var BMIValue = "0.0"
    var advice = "0.0"
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = BMIValue
        adviceLabel.text = advice
    }
    @IBAction func recalculateTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
