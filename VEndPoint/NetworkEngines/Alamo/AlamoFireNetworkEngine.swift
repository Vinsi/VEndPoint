 //
//  TrolleyAPI.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/2/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
import Alamofire

 
 
 class  AlamoRequest :ICancellable{
    func isCancelled() -> Bool {
        return false
    }
    
    
    var request:DataRequest? = nil
    func cancel() {
        request?.cancel()
        
    }
    convenience init(request:DataRequest) {
        
        self.init()
        self.request = request
        
    }
    
    
    
    
    
 }

 class  AlamoFireNetworkEngine:IHttpNetworkEngine {
  
   
    var plugins: [IHttpPlugins]
    
  
  
  
    init(plugins:[IHttpPlugins] = []) {
        self.plugins = plugins
    }
    
  
  
    func handle(endPointAdapter : EndPointTypeAdapter ,onComplete:@escaping (_ status:Status,_ responseData:Data? )->Void)->ICancellable? {
        
      
        
        return AlamoRequest(request: Alamofire.request(endPointAdapter).response(completionHandler: { (response) in
            
            
            guard let data = response.data else {
                
                
                onComplete(APIStatus(status:Status.networkEmptyResponse()),nil)
                return
            }
            onComplete(APIStatus(status:Status.networkSuccess()),data)
           return
            
         
            
            
            
            
            
            
            
        })// function close
        )

 }
  
    
 }

