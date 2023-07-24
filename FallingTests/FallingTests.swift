//
//  FallingTests.swift
//  FallingTests
//
//  Created by Kanghos on 2023/07/10.
//
import FirebaseCore
import FirebaseStorage
import XCTest

@testable import Falling

final class FallingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // https://firebase.google.com/docs/storage/ios/download-files?hl=ko&authuser=0
    func test_downloadTest() throws {

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let expectation = XCTestExpectation(description: "file download")
        FirebaseApp.configure()
        let storage = Storage.storage()
        let ref = storage.reference().child("images/test.jpg")

        ref.getData(maxSize: 1 * 1024 * 1024) { result in
            switch result {
            case .success(let data):
                XCTAssertTrue(data.count > 0, "\(data.count)")
                expectation.fulfill()
            case .failure(let error):
                XCTAssertTrue(false, error.localizedDescription)
                expectation.fulfill()
            }
        }
        wait(for: [expectation], timeout: 10)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
