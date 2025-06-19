//
//  User.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation

struct User: Codable, Identifiable, Equatable {
    let id : Int
    let name: String
    let username: String
    let email: String
    let website: String

}
