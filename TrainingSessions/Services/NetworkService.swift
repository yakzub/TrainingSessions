//
//  NetworkService.swift
//  TrainingSessions
//
//  Created by Yakov on 23.10.2025.
//

import Foundation

class NetworkService {
    private static let baseAddress = "http://ovz2.nikbakland.me78p.vps.myjino.ru:49560"
    private let httpLayer = URLSessionLayer()


    func loginRequest(login: String, password: String, callback: @escaping LoginCallback) {
        var request = URLRequest(url: URL(string: "\(NetworkService.baseAddress)/authorization")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONEncoder().encode(AuthRequest(username: login, password: password))

        httpLayer.makeRequest(urlRequest: request) { result in
            switch result {
            case .success(let data):
                let token = try? JSONDecoder().decode(AuthResponse.self, from: data)
                callback(token)
            case .failure(let error):
                print(error)
                callback(nil)
            }
        }
    }
}
