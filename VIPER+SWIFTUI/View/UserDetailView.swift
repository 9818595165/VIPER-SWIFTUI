//
//  UserDetailView.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI

struct UserDetailView: View {
    let user: User

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Name: \(user.name)")
                .font(.title2)
                .bold()

            Text("Username: \(user.username)")
                .font(.headline)
                .foregroundColor(.secondary)

            Text("Email: \(user.email)")
                .font(.subheadline)
                .foregroundColor(.blue)

            Text("Website: \(user.website)")
                .font(.headline)
                .foregroundColor(.secondary)

            
            Spacer()

        }
        .padding()
        .navigationTitle("User Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

