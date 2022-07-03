//
//  MyGreeterDemoTests.swift
//  MyGreeterDemoTests
//
//  Created by 许远备 on 2022/7/1.
//

import XCTest
@testable import MyGreeterDemo

class MyGreeterDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testGreeterCreated() {
        let greeter = MyGreeterClient()
        XCTAssertNotNil(greeter)
    }
    func testGreetingMessage(){
        let greeter = MyGreeterClient()
        let greetMessage = greeter.greet()
        let df = DateFormatter()
        df.dateFormat = "HH"
        let dateString = df.string(from: Date())
        let hour:Int? = Int(dateString)
        if let greethour = hour {
            if(greethour>6 && greethour<12){
                XCTAssertEqual(greetMessage, "Good Morining")
            }else if(greethour>12&&greethour<18){
                XCTAssertEqual(greetMessage, "Good AfterNoon1")
            }else{
                XCTAssertEqual(greetMessage, "Good Evening")
            }
        }else{
            XCTAssertEqual(greetMessage, "Good Day")
        }
        
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
