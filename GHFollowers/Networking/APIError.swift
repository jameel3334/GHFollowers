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

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
}
