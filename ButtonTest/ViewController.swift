//
//  ViewController.swift
//  ButtonTest
//
//  Created by Elisey on 30.07.2022.
//

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        view.backgroundColor = .white
        view.addSubview(gradientButton)
        setupConstreints()
        
    }
    
    private let gradientButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 360, height: 60))
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    
    func setupGradient() {

        let gradient = CAGradientLayer()
        let colorFirst = UIColor.systemBlue.cgColor
        let colorSecond = UIColor.systemCyan.cgColor

        gradient.colors = [colorFirst, colorSecond]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = gradientButton.bounds
        gradientButton.setTitleColor(UIColor(white: 1, alpha: 1), for: .normal)

        gradientButton.layer.addSublayer(gradient)
        gradientButton.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        gradientButton.setTitle("Зарегистрироваться", for: .normal)
        gradientButton.titleLabel?.font = Constants.Fonts.sfProDisplayRegular14


    }
    func setupConstreints() {
        
    gradientButton.translatesAutoresizingMaskIntoConstraints = false
    gradientButton.widthAnchor.constraint(equalToConstant: 345).isActive = true
    gradientButton.heightAnchor.constraint(equalToConstant: 54).isActive = true
    gradientButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
    gradientButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 649).isActive = true
        
    }
    
}



    
