//
//  TimeSlot.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension TrolleyAPIRouter{ //timeSlots
    enum TimeSlot:TrolleyBaseEndPoints {
      
        
     
        
        case get(request:TrolleyRequestModel<TimeSlotRequestDataModel>)
        case getScheduled(request:TrolleyRequestModel<TimeSlotRequestDataModel>)
        
        var parameters: Codable?{
            
            switch self {
            case .get(let request):
                return request
                
            case .getScheduled(let request):
                return request
                
                
            }
            
        }
        func path()->String{
            switch self {
            case .get:
                return         "/timeslot/get"
            case .getScheduled:
                return         "/timeslot/schedule/get"
                
            }
            
            
        }
        
    }
    
}
