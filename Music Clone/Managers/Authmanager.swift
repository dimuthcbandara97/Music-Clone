//
//  AuthManager.swift
//  Music Clone
//
//  Created by Dimuth Bandara on 2023-03-06.
//

import Foundation

final class AuthManger {
    static let shared = AuthManger()
    
    struct constants {
        static let clientID = "08e4319400604bd0929f3aef837e03ed"
        static let clientSecret = "314330ab694f4c44af45e5a2433f1d2c"
    }
    
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
