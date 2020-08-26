//
//  DatabaseManager.swift
//  Instagram
//
//  Created by apple on 8/25/20.
//  Copyright © 2020 Kha Nguyen. All rights reserved.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    // MARK: - Public
    
    /// Check if username and email is available
    public func canCreateNewUser(with username: String, email: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// Inserts new user data to database
    public func insertNewUser(with username: String, email: String, completion: @escaping (Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                // Succeeded
                completion(true)
                return
            } else {
                // Failed
                completion(false)
                return
            }
        }
    }
}
