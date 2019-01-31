//
//  User.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension TrolleyAPIRouter { //User
    enum User:TrolleyBaseEndPoints {
       
        
        case auth           (request:TrolleyRequestModel<AuthRequestDataModel>)
        case add            (request:TrolleyRequestModel<UserNewAddModel>)
        case forgotpassword (request:TrolleyRequestModel<ForgotPasswordDataRequestModel>)
        case resetpassword  (request:TrolleyRequestModel<PaswordResetDataRequestModel>)
        case orderedProduct (request:HistoryProductRequestModel)
        case cartadd        (request:TrolleyRequestModel<CartItemDataRequestModel>)
        case info           (request:UserInfoRequestModel)
        case infoUpdate     (request:TrolleyRequestModel<UserInfoUpdateRequestDataModel>)
        case reward         (request:RewardsRequestModel)
        func path()->String{
            switch self {
            case .auth:
                return     "/user/auth"
            case .add:
                return      "/user/add"
            case .forgotpassword:
                return     "/user/forgotpassword"
            case .resetpassword:
                return     "/user/resetpassword"
            case .orderedProduct:
                return     "/user/order/product"
            case .cartadd:
                return      "/user/cart/add"
            case .info:
                return      "/user/info"
            case .reward:
                return     "/user/reward/get"
            case .infoUpdate:
                return   "/user/info/update"
                
            }
        }
        var parameters: Codable?{
            
            switch self {

             case .auth           (let request ):return request
             case .add            (let request ):return request
             case .forgotpassword (let request ):return request
             case .resetpassword  (let request ):return request
             case .orderedProduct (let request ):return request
             case .cartadd        (let request ):return request
             case .info           (let request ):return request
             case .infoUpdate     (let request ):return request
             case .reward         (let request ):return request



            }

        }

    }
    
}
