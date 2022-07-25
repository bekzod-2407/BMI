//
//  MainView.swift
//  BMI
//
//  Created by Bekzod Qahhorov on 25/07/22.
//

import UIKit

class MainView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = .init(named: "calculate_background")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    lazy var mainStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [
        BMILabel,
        heightStack,
        heightSlider,
        weightStack,
        weightSlider
        ])
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.distribution = .fillProportionally
        view.axis = .vertical
        return view
    }()
    
    lazy var BMILabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "CALCULATE YOUR BMI"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 38, weight: .bold)
        return view
    }()
    lazy var heightStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [heightWordLabel,heightValueLabel])
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.axis = .horizontal
        view.distribution = .fillProportionally
        return view
    }()
    
    lazy var heightWordLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "Height"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 38, weight: .bold)
        return view
    }()
    
    lazy var heightValueLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "0m"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 38, weight: .bold)
        return view
    }()
    lazy var heightSlider: UISlider = {
        var view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 3
        view.thumbTintColor = #colorLiteral(red: 0.2901960784, green: 0.1176470588, blue: 0.537254902, alpha: 1)
        view.minimumTrackTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        return view
    }()
    
    lazy var weightStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [weightWordLabel,weightValueLabel])
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.axis = .horizontal
        view.distribution = .fillProportionally
        return view
    }()
    lazy var weightWordLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "weight"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 38, weight: .bold)
        return view
    }()
    
    lazy var weightValueLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.text = "1,5 kg"
        view.textColor = .black
        view.textAlignment = .center
        view.font = .monospacedSystemFont(ofSize: 38, weight: .bold)
        return view
    }()
    
    lazy var weightSlider: UISlider = {
        var view = UISlider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.minimumValue = 0
        view.maximumValue = 200
        view.thumbTintColor = #colorLiteral(red: 0.2901960784, green: 0.1176470588, blue: 0.537254902, alpha: 1)
        view.minimumTrackTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupSubView() {
        
    }
}
