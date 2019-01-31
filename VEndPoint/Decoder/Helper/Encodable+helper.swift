//
//  Encodable+helper.swift
//  VEndPoint
//
//  Created by test on 1/31/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
extension Encodable {
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
    func asJsonString() throws -> String? {
        let jsonString = String(data: self as! Data, encoding: .utf8)
        return jsonString
    }
}
