//
//  AuthManager.swift
//  Music Clone
//
//  Created by Dimuth Bandara on 2023-03-06.
//

import Foundation

final class AuthManger {
    static let shared = AuthManger()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
