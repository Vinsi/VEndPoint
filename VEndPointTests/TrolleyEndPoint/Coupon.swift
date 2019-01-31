//
//  Coupon.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension TrolleyAPIRouter { // coupon
    
    enum Coupon: TrolleyBaseEndPoints {
        case discount(request:TrolleyRequestModel<CouponDataRequestModel>)
        
        func path()->String{
            switch self {
            case .discount:
                return    "/coupon/discount/get"
                
                
                
            }
            
        }
        var parameters: Codable?{
            
            switch self {
            case .discount(let request):
                return  request
         
            
        }
        
    }
}
}
