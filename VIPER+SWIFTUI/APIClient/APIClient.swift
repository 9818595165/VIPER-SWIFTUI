//
//  APIClient.swift
//  VIPER+SWIFTUI
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import Foundation
import Combine

let baseURL = "https://jsonplaceholder.typicode.com/"

class APIClient: APIClientProtocol {
    func request<T>(_ type: T.Type, _ endpoint: String) -> AnyPublisher<[T], Error> where T : Decodable {
        guard let url = URL(string: "\(baseURL)\(endpoint)") else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
      return  URLSession.shared.dataTaskPublisher(for: url)
                    .map(\.data)
                    .decode(type: [T].self, decoder: JSONDecoder())
                    .receive(on: DispatchQueue.main)
                    .eraseToAnyPublisher()
    }
}
