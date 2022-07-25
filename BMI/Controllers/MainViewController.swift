//
//  ViewController.swift
//  BMI
//
//  Created by user on 22/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
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
        mainView.weightValueLabel.text = "\(weight)Kg"
    }
    
    @objc func heightValueChanged(slider: UISlider) {
      let height = String(format: "%.2f", slider.value)
        mainView.heightValueLabel.text = "\(height)m"
    }
    
    @objc func calculateTapped(button: UIButton) {
        let height = mainView.heightSlider.value
        let weight = mainView.weightSlider.value
       calculateBrain.calculateBMI(height: height,weight: weight)
        
        let resultVC  =  ResultViewController()
        resultVC.BMIValue = calculateBrain.getBMIValue()
        resultVC.advice = calculateBrain.getAdvice()
        resultVC.view.backgroundColor = calculateBrain.getColor()
        
        resultVC.modalTransitionStyle = .flipHorizontal
        resultVC.modalPresentationStyle = .fullScreen
        present(resultVC, animated: true, completion: nil)
    }
    
  
}

