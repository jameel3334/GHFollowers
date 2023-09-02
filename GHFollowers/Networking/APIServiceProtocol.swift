//
//  APIServiceProtocol.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 9/2/23.
//

import Foundation

protocol APIServiceProtocol {
    func fetchData<T: Codable>(from urlString: String, for type: T.Type) async throws -> T 
}
