//
//  CategoryEndPoints.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension TrolleyAPIRouter {
    
    
    
    
    enum Category : TrolleyBaseEndPoints {
      
        
        
        
        
        
        
        
        // category
        
        case getAll(requestModel:EmptyTrolleyRequestModel)
        case products(requestModel:TrolleyRequestModel<ProductsInCategoryRequestDataModel>)
        
        func path()->String{
            switch self {
            case .getAll:
                return   "/category/getall"
            case .products:
                return   "/category/products/get"
            }
            
        }
        var parameters: Codable?{
            
            switch self {
            case .getAll(let request):
                return request
            case .products(let request):
                return request
            }
            
        }
        
        
    }
    
    
}
