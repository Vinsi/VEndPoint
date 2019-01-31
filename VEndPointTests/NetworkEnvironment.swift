//
//  Env.swift
//  VEndPointTests
//
//  Created by test on 1/31/19.
//  Copyright © 2019 test. All rights reserved.
//
import VEndPoint
import Foundation
enum NetworkEnvironment :IEnvironment{
    case qa
    case production
    case staging
    case testingLocal
    func baseURL()->String{
        switch self {
        case .production: return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        case .qa        : return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        case .staging   : return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        case .testingLocal   : return "http://localhost/Trolley/public/api/v2"
        }
    }
}
