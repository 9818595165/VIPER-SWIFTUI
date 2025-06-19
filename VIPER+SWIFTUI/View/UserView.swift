//
//  UserView.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var presenter: UserPresenter

    var body: some View {
        NavigationView {
            VStack{
                if presenter.isLoading {
                    ProgressView("Loading...")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                }else{
                    List(presenter.users) { user in
                        NavigationLink {
                            UserDetailView(user: user)
                        } label: {
                            VStack(alignment: .leading) {
                                Text(user.name).bold()
                                Text(user.email).font(.subheadline).foregroundColor(.gray)
                            }

                        }

                    }
                }
            }
            .navigationTitle("Users")
            .onAppear {
                presenter.onAppear()
            }
            .alert(item: Binding(get: {
                presenter.errorMessage.map { IdentifiableString(value: $0) }
            }, set: { _ in presenter.errorMessage = nil })) { alertItem in
                Alert(title: Text("Error"), message: Text(alertItem.value), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct IdentifiableString: Identifiable {
    var id: String { value }
    let value: String
}
