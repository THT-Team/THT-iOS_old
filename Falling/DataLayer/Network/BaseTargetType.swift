//
//  BaseTargetType.swift
//  Falling
//
//  Created by Kanghos on 2023/07/10.
//

import Foundation
import Moya

protocol BaseTargetType: TargetType { }

extension BaseTargetType {

    // Protocol Default Implementation
    var baseURL: URL {
        return URL(string: "http://tht-talk.store/")!
    }

    var headers: [String : String]? {
        let header = ["Content-Type": "application/json"]
        return header
    }
}
