//
//  Products.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension TrolleyAPIRouter{
    
    enum Search: TrolleyBaseEndPoints {
      
        // products
        case searchBySku(request:TrolleyRequestModel<SearchSkuRequestDataModel>)
        case searchByName(request:TrolleyRequestModel<SearchNameDataRequestModel>)
        func path()->String{
            switch self {
            case .searchBySku:
                return     "/product/search/sku/get"
            case .searchByName:
                return    "/product/search/name/get"
            }
            
            
        }
        var parameters: Codable?{
            
            switch self {
            case .searchBySku(let request):
                return  request
            case .searchByName(let request):
                return request
            }
            
        }
        
    }
    
    
}
