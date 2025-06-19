//
//  APIClientProtocol.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation
import Combine

protocol APIClientProtocol {
    func request<T: Decodable>(_ type: T.Type, _ endpoint: String) -> AnyPublisher<[T], Error>
}
