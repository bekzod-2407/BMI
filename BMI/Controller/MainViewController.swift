//
//  ViewController.swift
//  BMI
//
//  Created by user on 22/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GotoSecondVC" {
            let secondVC = segue.destination as! ResultViewController
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
        mainView.weightSlider.addTarget(self, action: #selector(weightValueChanged), for:.valueChanged)
        mainView.heightSlider.addTarget(self, action: #selector(heightValueChanged), for:.valueChanged)
        mainView.calculateButton.addTarget(self, action: #selector(calculateTapped), for: .touchUpInside)
    }
    
    @objc func weightValueChanged(slider: UISlider) {
        let weight = String(format: "%.0f", slider.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @objc func heightValueChanged(slider: UISlider) {
      let height = String(format: "%.2f", slider.value)
        heightLabel.text = "\(height)m"
    }
    
    @objc func calculateTapped(button: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       
        
        calculateBrain.calculateBMI(height: height,weight: weight)
       
        
        performSegue(withIdentifier: "GotoSecondVC", sender: self)
        

        
    }
    
  
}

