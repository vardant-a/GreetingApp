//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Aleksei on 23.01.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    // MARK: - Private properties [MODEL]
    
    private var person: Person!
    
    // MARK: - Private lazy Properties
    
    private lazy var greetingLabel = UILabel()

    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    // MARK: - Override Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
}

    // MARK: - Settings View

private extension GreetingViewController {
    func setupView() {
        view.addSubview(greetingLabel)
        greetingLabel.text = "Hello"
        person = Person(name: "Ray", lastName: "Dog")
        view.backgroundColor = .gray
        setupLayout()
    }
}
 
    // MARK: - Layout

private extension GreetingViewController {
    func setupLayout() {
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greetingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
