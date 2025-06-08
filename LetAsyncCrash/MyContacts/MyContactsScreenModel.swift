// 
//  MyContactsScreenModel.swift
//  CommunityApp
//
//  Created by Tatyana on 24.05.2025.
//  Copyright © 2025 Tatyana. All rights reserved.
//
import Foundation
import Combine
import SwiftUI

@MainActor
public final class MyContactsScreenModel: ObservableObject {

    public init() { }

    func asyncSaveAndBackAction() {
        
        Task {
            await saveData()
            print("sada saved")
        }
    }
}

extension MyContactsScreenModel {
    
    func saveData() async {
        
        async let contacts = saveContacts()
        async let details = saveAbountMe()
        
        let (contactsRequest, detailsRequest) = await (contacts, details)

        if let error = contactsRequest.failure ?? detailsRequest.failure {
            print("error = \(error)")
        }

        let _ = try? await getProfileTest().get()
    }

    func saveContacts() async -> Result<Void, Error> {
        try? await Task.sleep(nanoseconds: 100_000_000)
        return .success(())
    }
    
    func saveAbountMe() async -> Result<Void, Error> {
        
        try? await Task.sleep(nanoseconds: 200_000_000)
        return .success(())
    }
    
    func getProfileTest() async -> Result<MyProfileTestModel?, Error> {
        try? await Task.sleep(nanoseconds: 100_000_000)
        return .success(nil)
    }
}

struct MyProfileTestModel: Codable {
    
    var id: String
    var name: String?
    
    var lastName: String
    var firstName: String
    var middleName: String
    var contacts: MyContactsTestModel?
}

struct MyContactsTestModel: Codable {
    var city: String?
    var email: String?
    var phone: String?
}

extension Result {
    
    var failure: Failure? {
        switch self {
        case .failure(let error): return error
        default: return nil
        }
    }
}
