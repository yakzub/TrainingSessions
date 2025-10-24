//
//  TypeAliases.swift
//  TrainingSessions
//
//  Created by Nikolai Baklanov on 24.10.2025.
//

import Foundation

typealias RequestCallback = (Result<Data, any Error>) -> Void
typealias LoginCallback = (AuthResponse?) -> Void
