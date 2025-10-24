//
//  URLSessionLayer.swift
//  TrainingSessions
//
//  Created by Nikolai Baklanov on 24.10.2025.
//

import Foundation

struct URLSessionLayer {

    func makeRequest(urlRequest: URLRequest, callback: @escaping RequestCallback) {
        URLSession.shared.dataTask(with: urlRequest, completionHandler: { data, response, error in
            guard error == nil else {
                callback(Result.failure(NetworkErrors.networkError))
                return
            }
            guard let data else {
                callback(Result.failure(NetworkErrors.emptyData))
                return
            }

            callback(Result.success(data))

//            if let httpResponse = response as? HTTPURLResponse,
//               (200..<300).isMultiple(of: httpResponse.statusCode) {
//                callback(Result.success(data))
//            } else {
//                callback(Result.failure(NetworkErrors.wrongStatus(code: (response as? HTTPURLResponse)?.statusCode ?? 0)))
//            }
        }).resume()
    }
}
