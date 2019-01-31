//
//  IDecodable.swift
//  VEndPoint
//
//  Created by test on 1/20/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
public protocol IDecoderEngine {
    func decode<T:Codable>(decodeType:T.Type, from: Data)throws ->T?
}
