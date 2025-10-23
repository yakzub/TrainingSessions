//
//  LoginInteractor.swift
//  TrainingSessions
//
//  Created by Yakov on 23.10.2025.
//

import Foundation

class LoginInteractor {
    
    private let presenter: LoginPresenter
    private let networkService = NetworkService()
    
    init(presenter: LoginPresenter) {
        self.presenter = presenter
    }
    
    func login(username: String, password: String) -> Void {
       
        networkService.loginRequest()
        

        presenter.loginResult(result: true)
    }
    
}
