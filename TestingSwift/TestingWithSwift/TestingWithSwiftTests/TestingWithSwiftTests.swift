//
//  TestingWithSwiftTests.swift
//  TestingWithSwiftTests
//
//  Created by Joshua Niederer on 1/1/18.
//  Copyright © 2018 Joshua Niederer. All rights reserved.
//

import XCTest
@testable import TestingWithSwift

class TestingWithSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Arrange (given)
        var aNum = 1
        
        // Act (when)
        aNum += 2
        
        // Assert (then)
        XCTAssertEqual(aNum, 3, "The values, \(aNum) and 3, do not match")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
