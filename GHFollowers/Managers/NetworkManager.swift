//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 25.04.24.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager() //singleton
    private let baseURL = "https://api.github.com/users/"
    private init() {}
    
  
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
        let endpoint =
    }
}
