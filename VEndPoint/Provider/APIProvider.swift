
//
//  File.swift
//  VEndPoint
//
//  Created by test on 1/20/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation




public class APIProvider<E:IAPIRouter>:IAPIProvider {

    public typealias Router = E
    
    public var environment: IEnvironment
    public var decoder: IDecoderEngine?
    
    init(environment :IEnvironment,
         httpEngine  :IHttpNetworkEngine,
            decoder  :IDecoderEngine) {
        
        self.environment = environment
        self.httpEngine  = httpEngine
        self.decoder     = decoder
    
    }
    
   
    typealias Endpoint = E
    
    
    var httpEngine:IHttpNetworkEngine
     @discardableResult
    public func request<R:Codable>(endpoint:  @escaping (_ router:Router.Type)->EndPointType, responseType:R.Type, onComplete:( @escaping (_ status:APIStatus, _ response:R?) -> Void)) -> ICancellable? {
        
        let adapter = EndPointTypeAdapter(environment: environment, endPoint: endpoint(Router.self))
        
        return self.httpEngine.handle(endPointAdapter: adapter, onComplete: { (status, responseData) in
           
            guard  status.isSuccess()  else {
                
                onComplete(APIStatus(status: status),nil)
                return
            }
            guard  let response = responseData  else {
                
                onComplete(APIStatus(status: Status.networkEmptyResponse()),nil)
                return
            }
            
            
            
            // modelling
            do {
                let modelObject =  try self.decoder?.decode(decodeType: responseType, from: response)
                
                onComplete(APIStatus(status:Status.networkSuccess()), modelObject)
                
            }
            catch let error {
                let status = APIStatus(status:Status.networkFailureParsing(message: error.localizedDescription))
                status.rawdata = String(decoding: response, as: UTF8.self)
                onComplete(status,nil)
                
            }//  cath
            
            
            
            
        }) ///////

        
        
    }
    

    
 
    
    
}
