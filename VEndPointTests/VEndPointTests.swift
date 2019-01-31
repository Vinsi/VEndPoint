//
//  VEndPointTests.swift
//  VEndPointTests
//
//  Created by test on 1/20/19.
//  Copyright © 2019 test. All rights reserved.
//

import XCTest
@testable import VEndPoint








class VEndPointTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
     
        let obj = APIProvider<TrolleyAPIRouter>(
            environment : NetworkEnvironment.production,
            httpEngine  : AlamoFireNetworkEngine(),
            decoder     : JsonDecoderEngine()
        )
        
        
        let request = EmptyTrolleyRequestModel()
        request.header = HeaderRequestModel()
        request.data   = ""
        
        
        let expectation = XCTestExpectation(description: "getting")
       _ =  obj.request(endpoint:
            {$0.Category.getAll(requestModel:request )},
                    responseType: TrolleyResponseModel<[CategoryResponseDataModel]>.self, onComplete: { (status, response) in
            
                        
                      
                        
        })
        
    
        
        wait(for: [expectation], timeout: 20.0)
        
        
//        obj.request(router: TrolleyEndPoints, responseType: <#T##(Decodable & Encodable).Protocol#>) { (<#APIStatus#>, <#(Decodable & Encodable)?#>) in
//            <#code#>
//        }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
