//
//  User.swift
//  TrainingSessions
//
//  Created by Yakov on 23.10.2025.
//

import Foundation

struct User: Decodable {
    let id: Int
    let username: String
    let email: String
    let address: Address
}

struct Address: Decodable {
    let street: String
    let suite: String
    let city: String
    let geo: Geo
}

struct Geo: Decodable {
    let lat: String
    let lng: String
}
