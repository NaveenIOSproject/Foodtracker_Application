//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Naveen Dangeti on 09/02/17.
//  Copyright © 2017 Naveen Dangeti. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    //MARK: Meal Class Tests
    
    //Confirm that the Meal Intializer returns a Meal object when passed valid parameters
    
    func testMealInitializationSucceeds(){
        
        //zero rating
        
        let zeroRatingMeal = meal.init(name:"zero", photo:nil, rating:0)
        XCTAssertNotNil(zeroRatingMeal)
        
        
        //Highest positive rating
        
        let positiveRatingMeal = meal.init(name:"positive", photo:nil, rating:5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitilizationFails(){
        
        //confirm that the Meal Initializer returns nil when passed a negative rating or an empty name
        
        //negative rating
        
        let negativeRatingMeal=meal.init(name: "negative", photo: nil, rating: -3)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        //emptyname string
        let emptyStringMeal=meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
}
