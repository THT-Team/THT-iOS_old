//
//  DefaultProvider.swift
//  Data
//
//  Created by Kanghos on 6/25/24.
//

import Foundation

import Moya
import Alamofire

extension ProviderProtocol {
  static func makeStubProvider() -> MoyaProvider<Target> {
    return consProvider(true)
  }
}
