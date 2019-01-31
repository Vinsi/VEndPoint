//
//  IHttpPlugin.swift
//  VEndPoint
//
//  Created by test on 1/30/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
public protocol IHttpPlugins {
    
    func httpPluginDidStart()
    func httpPluginDidRecieveData(data:Data,recieved:Int ,totalSizeinBytes:Int )
    func httpPluginDidFinish(status:Status, response:Data)
    
    
    
}
