//
//  File.swift
//  VEndPoint
//
//  Created by test on 1/20/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation

public protocol EndPointType   {
    var headers: [String:String]? { get }
    var method:HTTPMethods?{ get }
    var parameters:Codable? {get }
    func path()->String
    
}
