//
//  Location.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
import VEndPoint
extension TrolleyAPIRouter { //Lcoation
    enum Location:TrolleyBaseEndPoints
    {
        
        
        
  
        
        case add             (request:TrolleyRequestModel<NewLocationRequestDataModel>)
        case update          (request:TrolleyRequestModel<UpdateLocationRequestDataModel>)
        case updateTodefault (request:TrolleyRequestModel<ChangeDefaultLocationRequestDataModel>)
        case getCountries    (request:TrolleyRequestModel<CountryRequestModel>)
        case getZones        (request:TrolleyRequestModel<ZoneRequestDataModel>)
        
        func path()->String{
            switch self {
            case .add:
                return     "/location/add"
            case .update:
                return     "/location/update"
            case .updateTodefault:
                return       "/location/default/update"
            case .getCountries:
                return       "/location/country/get"
            case .getZones:
                return       "/location/zone/get"
                
            }
            
            
        }
        var parameters: Codable?{

            switch(self){
            case .add             (let request): return request
            case .update          (let request): return request
            case .updateTodefault (let request): return request
            case .getCountries    (let request): return request
            case .getZones        (let request): return request

        }

    }
    }
}
