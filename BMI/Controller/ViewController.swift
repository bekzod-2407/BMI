//
//  ViewController.swift
//  BMI
//
//  Created by user on 22/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    private lazy var mainView: MainView = {
        var view = MainView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var calculateBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }

    @IBAction func heightValueChanged(_ sender: UISlider) {
        
       let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       
        
        calculateBrain.calculateBMI(height: height,weight: weight)
       
        
        performSegue(withIdentifier: "GotoSecondVC", sender: self)
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GotoSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.BMIValue = calculateBrain.getBMIValue()
            secondVC.advice = calculateBrain.getAdvice()
            secondVC.view.backgroundColor = calculateBrain.getColor()
        }
    }
    
    private func setupSubView() {
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate([
        
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mainView.rightAnchor.constraint(equalTo: view.rightAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    
}

