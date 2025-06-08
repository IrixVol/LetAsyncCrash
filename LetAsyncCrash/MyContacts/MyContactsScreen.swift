// 
//  MyContactsScreen.swift
//  CommunityApp
//
//  Created by Tatyana on 24.05.2025.
//  Copyright © 2025 Tatyana. All rights reserved.
//
import SwiftUI

@MainActor
public struct MyContactsScreen: View {
    
    @ObservedObject var viewModel: MyContactsScreenModel

    public init(viewModel: MyContactsScreenModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {

        VStack(spacing: 32) {
            Text("Demo app to show crash with async let")
            
            Button("Tap to get crash") {
                viewModel.asyncSaveAndBackAction()
            }
        }
    }
}
