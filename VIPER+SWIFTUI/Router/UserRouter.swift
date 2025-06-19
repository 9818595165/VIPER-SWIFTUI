//
//  UserRouter.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI
class UserRouter {
    static func createModule(apiClient: APIClientProtocol = APIClient()) -> some View {
        let interactor = UserInteractor(apiClient: apiClient)
        let presenter = UserPresenter(interactor: interactor)
        interactor.presenter = presenter
        let view = UserView(presenter: presenter)
        return view
    }
}
