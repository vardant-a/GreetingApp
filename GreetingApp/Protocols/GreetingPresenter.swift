//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Aleksei on 23.01.2023.
//

protocol GreetingPresentalProtocol {
    init(view: GreetingViewProtocol, person: Person)
    
    func showGreeting()
}

class GreetingPresenter: GreetingPresentalProtocol {
    private unowned let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.lastName)"
        view.setGreeting(greeting)
    }
}
