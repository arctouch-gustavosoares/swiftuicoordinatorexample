//
//  LoginView.swift
//  LoginSampleNavigation
//
//  Created by Gustavo Soares on 04/03/22.
//

import SwiftUI

struct LoginView: View {

    @ObservedObject var mainCoordinator: MainCoordinator

    var body: some View {
        VStack {
            Button {
                mainCoordinator.loggedIn()
            } label: {
                Text("Log in")
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
         .background(.yellow)
    }
}
