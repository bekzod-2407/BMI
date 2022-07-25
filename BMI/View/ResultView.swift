//
//  ResultView.swift
//  BMI
//
//  Created by Bekzod Qahhorov on 25/07/22.
//

import UIKit

class ResultView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = .init(named: "result_background")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    lazy var mainStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [
            resultLabel,
            BMILabel,
            adviceLabel,
        ])
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.distribution = .fillProportionally
        view.axis = .vertical
        return view
    }()
    
    lazy var BMILabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "16.9"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 49, weight: .semibold)
        return view
    }()
    
    lazy var adviceLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "Height"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 18, weight: .medium)
        return view
    }()
    
    lazy var resultLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "YOUR RESULT"
        view.textColor = .systemGray6
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 18, weight: .bold)
        return view
    }()
    
    lazy var recalculateButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Recalculate", for: .normal)
        view.tintColor = .white
        view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.1176470588, blue: 0.537254902, alpha: 1)
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupSubView() {
        self.addSubview(backgroundImage)
        self.addSubview(mainStack)
        self.addSubview(recalculateButton)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            mainStack.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            mainStack.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 10),
            mainStack.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -10),
            mainStack.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -25),
            
            recalculateButton.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 10),
            recalculateButton.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -10),
            recalculateButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -25),
            
            recalculateButton.heightAnchor.constraint(equalToConstant: 75),
            
            
        ])
    }
}

