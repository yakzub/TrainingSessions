//
//  NetworkService.swift
//  TrainingSessions
//
//  Created by Yakov on 23.10.2025.
//

import Foundation

class NetworkService {
    func loginRequest() {
        let request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/users")!)

        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            guard error == nil else { return }
            guard let data else { return }

            let parsed = try? JSONDecoder().decode([User].self, from: data)
            print(parsed)
        }).resume()
    }
}
