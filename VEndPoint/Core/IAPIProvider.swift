//
//  IAPIProvider
//  VEndPoint
//
//  Created by test on 1/30/19.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
protocol IAPIProvider {
    associatedtype Router  : IAPIRouter
   
    
    var decoder:IDecoderEngine? {get set}
    var environment:IEnvironment {get set}
    @discardableResult
    func request<R:Codable>(endpoint: @escaping (_ router:Router.Type)->EndPointType, responseType:R.Type, onComplete:( @escaping (_ status:APIStatus, _ response:R?) -> Void)) -> ICancellable?
    
    
}
