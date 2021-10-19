//
//  composable_much_better_exerciseApp.swift
//  composable-much-better-exercise
//
//  Created by Christian Leovido on 12/10/2021.
//

import AppFeature
import ComposableArchitecture
import SwiftUI

@main
struct MuchBetterApp: App {
    @State var isLoggedIn = false

    let store: Store<AppState, AppAction> = Store(
        initialState: .init(),
        reducer: appReducer.debug(),
        environment: .mock
    )

    var body: some Scene {
        WindowGroup {
            AppView(store: store)
        }
    }
}
