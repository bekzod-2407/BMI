//
//  SecondViewController.swift
//  BMI
//
//  Created by user on 23/06/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMIValue = "0.0"
    var advice = "0.0"
    
    private lazy var resultView: ResultView = {
        var view = ResultView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        resultView.BMILabel.text = BMIValue
        resultView.adviceLabel.text = advice
    }
    private func setupSubViews() {
        view.addSubview(resultView)
        
        NSLayoutConstraint.activate([
            resultView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            resultView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            resultView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            resultView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        resultView.recalculateButton.addTarget(self, action: #selector(recalculatePressed), for: .touchUpInside)
    }
    @objc func recalculatePressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
