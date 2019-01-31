//
//  EndPointTypeAdapter.swift
//  VEndPoint
//
//  Created by test on 1/31/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
public class EndPointTypeAdapter  {
    
    private var environment:IEnvironment
    private var endPoint:EndPointType
    init(environment:IEnvironment ,endPoint:EndPointType){
        
        self.endPoint    = endPoint
        self.environment = environment
        
    }
    
    func toURLRequest()throws ->  URLRequest? {
        
        let urlString =  "\(environment.baseURL())\(endPoint.path())"
        guard let url =  URL(string:urlString) else {
            return nil
        }
        var urlRequest = URLRequest(url: url)
        
        // HTTP Method
        urlRequest.httpMethod = endPoint.method?.rawValue
        
        // Common Headers
        urlRequest.setValue("application/json", forHTTPHeaderField:"Content-Type")
        
        
        // Parameters
        if let params = endPoint.parameters {
            do {
                
                let json = try params.asDictionary()
                urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: json , options: [])
            } catch {
//                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
  
    
    
    
    
}
