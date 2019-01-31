//
//  JsonDecoderEngine.swift
//  VEndPoint
//
//  Created by test on 1/30/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
public class JsonDecoderEngine : IDecoderEngine {
    
    
    var decoder: JSONDecoder? = JSONDecoder()
    public init(){
        
    }
    public func decode<T:Codable>(decodeType: T.Type, from: Data) throws -> T? {
        return try decoder?.decode(decodeType, from: from)
    }
    
    
}
