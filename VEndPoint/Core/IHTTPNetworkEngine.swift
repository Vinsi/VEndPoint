//
//  INetWorkEngine.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/20/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation



protocol IHttpNetworkEngine {
    var  plugins:[IHttpPlugins]  {get set}
    func handle(endPointAdapter: EndPointTypeAdapter ,onComplete:@escaping(_ status:Status,_ responseData:Data? )->Void)->ICancellable?
    
}

