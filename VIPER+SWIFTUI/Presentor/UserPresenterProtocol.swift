//
//  UserPresenterProtocol.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation

protocol UserPresenterProtocol: AnyObject {
    func didFetchUsers(users: [User])
    func didFailFetchingUsers(error: Error)
    func onAppear()
}
