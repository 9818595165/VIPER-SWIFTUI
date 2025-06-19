//
//  MockAPIClient.swift
//  VIPER+SWIFTUITests
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import XCTest
import Combine
@testable import VIPER_SWIFTUI

class MockAPIClient: APIClientProtocol {
    var result: Result<[User], Error>?

    func request<T>(_ type: T.Type, _ endpoint: String) -> AnyPublisher<T, Error> where T : Decodable {
        if let result = result as? Result<T, Error> {
            return result.publisher.eraseToAnyPublisher()
        } else {
            return Fail(error: URLError(.badServerResponse)).eraseToAnyPublisher()
        }
    }
}
