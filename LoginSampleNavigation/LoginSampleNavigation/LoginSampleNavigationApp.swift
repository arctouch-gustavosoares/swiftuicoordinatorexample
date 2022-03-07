//
//  LoginSampleNavigationApp.swift
//  LoginSampleNavigation
//
//  Created by Gustavo Soares on 04/03/22.
//

import SwiftUI

@main
struct LoginSampleNavigationApp: App {

    @StateObject var mainCoordinator = MainCoordinator()

    var body: some Scene {
        WindowGroup {
            VStack {
                if mainCoordinator.isLoggedIn {
                    MainView()
                        .transition(.move(edge: .leading))
                            .environmentObject(mainCoordinator)
                } else {
                    LoginView(mainCoordinator: mainCoordinator)
                }
            }.animation(.easeInOut(duration: 2.0), value: mainCoordinator.isLoggedIn)
        }
    }
}
