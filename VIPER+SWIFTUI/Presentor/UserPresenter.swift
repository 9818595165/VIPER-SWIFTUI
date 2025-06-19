//
//  UserPresenter.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation

class UserPresenter: ObservableObject, UserPresenterProtocol {
    @Published var users: [User] = []
    @Published var isLoading:Bool = false
    @Published var errorMessage: String? = nil
    private let interactor: UserInteractorProtocol

    init(interactor: UserInteractorProtocol) {
        self.interactor = interactor
    }

    func onAppear() {
        self.isLoading = true
        interactor.fetchUsers()
    }

    func didFetchUsers(users: [User]) {
        self.users = users
        self.isLoading = false
    }

    func didFailFetchingUsers(error: Error) {
        self.errorMessage = error.localizedDescription
        self.isLoading = false
    }
}
