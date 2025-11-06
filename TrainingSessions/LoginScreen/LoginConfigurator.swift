//
//  LoginConfigurator.swift
//  TrainingSessions
//
//  Created by Nikolai Baklanov on 06.11.2025.
//

import Foundation

struct LoginConfigurator {
    func configure(viewController: LoginViewController) {
        let presenter = LoginPresenter(view: viewController)
        let service = NetworkService()

        let interactor = LoginInteractor(presenter: presenter, networkService: service)

        viewController.interactor = interactor
    }
}
