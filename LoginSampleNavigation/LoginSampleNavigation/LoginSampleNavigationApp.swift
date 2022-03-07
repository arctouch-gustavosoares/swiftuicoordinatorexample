//
//  LoginSampleNavigationApp.swift
//  LoginSampleNavigation
//
//  Created by Gustavo Soares on 04/03/22.
//

import SwiftUI

@main
struct LoginSampleNavigationApp: App {

    @StateObject var navigationCoordinator = NavigationCoordinator()

    var body: some Scene {
        WindowGroup {
            VStack {
                if navigationCoordinator.isLoggedIn {
                    MainView()
                        .transition(.move(edge: .leading))
                            .environmentObject(navigationCoordinator)
                } else {
                    LoginView(navigationCoordinator: navigationCoordinator)
                }
            }.animation(.easeInOut(duration: 2.0), value: navigationCoordinator.isLoggedIn)
        }
    }
}
