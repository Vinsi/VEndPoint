//
//  er.swift
//  VEndPointTests
//
//  Created by test on 1/31/19.
//  Copyright © 2019 test. All rights reserved.
//
import VEndPoint
import Foundation
protocol TrolleyBaseEndPoints: EndPointType   {
    
}

extension TrolleyBaseEndPoints {
    public var headers:[String : String]?{
        return ["Content-Type":"application/json"]
    }
    public var method:HTTPMethods?{
        return HTTPMethods.post
        
    }
    
    
}
public class TrolleyAPIRouter:IAPIRouter {
    
    
}


