//
//  UserInteractor.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation
import Combine

class UserInteractor: UserInteractorProtocol {
    private let apiClient: APIClientProtocol
    weak var presenter: UserPresenterProtocol?
    
    private var cancellables = Set<AnyCancellable>()

    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }

    func fetchUsers() {
        apiClient.request(User.self, "users")
            .sink(receiveCompletion: {[weak self] completion in
                if case .failure(let error) = completion {
                    self?.presenter?.didFailFetchingUsers(error: error)
                }
            }, receiveValue: {[weak self] users in
                self?.presenter?.didFetchUsers(users: users)
            })
            .store(in: &cancellables)
    }
}
