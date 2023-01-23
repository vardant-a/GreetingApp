//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Aleksei on 23.01.2023.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

final class GreetingViewController: UIViewController {
    
    private var presenter: GreetingPresentalProtocol!
    
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
        presenter.showGreeting()
    }
}

    // MARK: - Settings View

private extension GreetingViewController {
    func setupView() {
        view.backgroundColor = .gray
        greetingLabel.text = "Please, tap to Screen"
        presenter = GreetingPresenter(
            view: self,
            person: Person(name: "Ray", lastName: "Puk")
        )
        view.addSubview(greetingLabel)
        setupLayout()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
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
