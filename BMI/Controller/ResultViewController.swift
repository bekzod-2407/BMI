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
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    private lazy var resultView: ResultView = {
        var view = ResultView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = BMIValue
        adviceLabel.text = advice
    }
    @IBAction func recalculateTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    private func setupSubViews() {
        view.addSubview(resultView)
        
        NSLayoutConstraint.activate([
            resultView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            resultView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            resultView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            resultView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
