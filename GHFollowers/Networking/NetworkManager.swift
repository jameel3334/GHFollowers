//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 9/2/23.
//

import Foundation

struct NetworkManager {
    static let shared = NetworkManager()
    let service: APIServiceProtocol
    
    init(service: APIServiceProtocol = APIService()) {
        self.service = service
    }
}
