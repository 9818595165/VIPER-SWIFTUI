//
//  VIPER_SWIFTUITests.swift
//  VIPER+SWIFTUITests
//
//  Created by Prabhat Pankaj on 19/06/25.
//

import XCTest
@testable import VIPER_SWIFTUI

final class VIPER_SWIFTUITests: XCTestCase {
    
    func testFetchUsersSuccess() {
        let mockClient = MockAPIClient()
        let dummyUsers = [User(id: 1, name: "John", username: "johndoe", email: "john@example.com")]
        mockClient.result = .success(dummyUsers)

        let interactor = UserInteractor(apiClient: mockClient)
        let presenter = UserPresenter(interactor: interactor)
        interactor.presenter = presenter

        let expectation = XCTestExpectation(description: "Users fetched")

        let cancellable = presenter.$users
            .dropFirst()
            .sink { users in
                XCTAssertEqual(users, dummyUsers)
                expectation.fulfill()
            }

        presenter.onAppear()
        wait(for: [expectation], timeout: 2.0)
        cancellable.cancel()
    }

    func testFetchUsersFailure() {
        let mockClient = MockAPIClient()
        mockClient.result = .failure(URLError(.badServerResponse))

        let interactor = UserInteractor(apiClient: mockClient)
        let presenter = UserPresenter(interactor: interactor)
        interactor.presenter = presenter

        let expectation = XCTestExpectation(description: "Error received")

        let cancellable = presenter.$errorMessage
            .dropFirst()
            .sink { error in
                XCTAssertNotNil(error)
                expectation.fulfill()
            }

        presenter.onAppear()
        wait(for: [expectation], timeout: 2.0)
        cancellable.cancel()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
