//
//  ContentView.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        UserRouter.createModule()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
