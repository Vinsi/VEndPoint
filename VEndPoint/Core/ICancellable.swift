//
//  ICancellable.swift
//  VEndPoint
//
//  Created by test on 1/20/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
public protocol ICancellable{
    func cancel()
    func isCancelled()->Bool
}
