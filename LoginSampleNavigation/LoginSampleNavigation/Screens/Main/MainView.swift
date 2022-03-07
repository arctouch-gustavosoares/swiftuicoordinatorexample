//
//  MainView.swift
//  LoginSampleNavigation
//
//  Created by Gustavo Soares on 04/03/22.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject private var mainCoordinator: MainCoordinator

    var body: some View {
        TabView {
            Text("Main Tab").tabItem {
                Text("Main")
            }.tag(1)
            Text("Second Tab").tabItem {
                Text("Second")
            }.tag(2)
            Text("Third Tab").tabItem {
                Text("Third")
            }.tag(3)
        }
    }
}

