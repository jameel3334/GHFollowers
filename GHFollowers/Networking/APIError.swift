//
//  APIError.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 9/2/23.
//

import Foundation

enum NetworkingError: LocalizedError {
    case invalidUrl
    case invalidStatusCode(statusCode: Int)
    case invalidData
}
