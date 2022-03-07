//
//  NavigationCoordinator.swift
//  LoginSampleNavigation
//
//  Created by Gustavo Soares on 04/03/22.
//

import SwiftUI

final class MainCoordinator: ObservableObject {

    @Published var isLoggedIn: Bool = false

    func loggedIn() {
        isLoggedIn = true
    }
}
