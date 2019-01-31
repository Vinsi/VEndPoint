//
//  EndPointTypeAdapter+Alamo.swift
//  VEndPoint
//
//  Created by test on 1/31/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
import Alamofire
extension EndPointTypeAdapter : URLRequestConvertible {
    public func asURLRequest() throws -> URLRequest {
    return  try self.toURLRequest()!
}
}
