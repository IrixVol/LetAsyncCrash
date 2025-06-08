//
//  LetAsyncCrashApp.swift
//  LetAsyncCrash
//
//  Created by Tatyana on 08.06.2025.
//

import SwiftUI

@main
struct LetAsyncCrashApp: App {
    var body: some Scene {
        WindowGroup {
            MyContactsScreen(viewModel: .init())
        }
    }
}
