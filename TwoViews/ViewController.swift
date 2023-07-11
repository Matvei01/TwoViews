//
//  ViewController.swift
//  TwoViews
//
//  Created by Matvei Khlestov on 06.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let greenView = UIView()
    private let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureGreenView()
        configureRedView()
        
        layoutGreenView()
        layoutRedView()
    }
    
    private func configureGreenView() {
        view.addSubview(greenView)
        
        greenView.backgroundColor = .green
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureRedView() {
        view.addSubview(redView)
        
        redView.backgroundColor = .red
        
        redView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layoutGreenView() {
        NSLayoutConstraint.activate(
            [
                greenView.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 20
                ),
                greenView.leadingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 16
                ),
                greenView.trailingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -16
                ),
                greenView.heightAnchor.constraint(equalToConstant: 312)
            ]
        )
    }
    
    private func layoutRedView() {
        NSLayoutConstraint.activate(
            [
                redView.topAnchor.constraint(
                    equalTo: greenView.bottomAnchor,
                    constant: 24
                ),
                redView.leadingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                    constant: 16
                ),
                redView.trailingAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                    constant: -16
                ),
                redView.bottomAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                    constant: -20
                ),
                redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
            ]
        )
    }
}

