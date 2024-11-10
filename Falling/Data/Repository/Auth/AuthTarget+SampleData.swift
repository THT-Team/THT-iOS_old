//
//  AuthTarget+SampleData.swift
//  Data
//
//  Created by Kanghos on 9/1/24.
//  Copyright © 2024 THT. All rights reserved.
//

import Foundation
import Moya

extension AuthTarget {
  public var sampleData: Data {
    switch self {
    case .certificate:
      return Data(
        """
    {
      "phoneNumber": "01012345678",
      "authNumber": 123456
    }
    """.utf8)
    case .checkExistence:
      return Data(
        """
    {
      "isSignUp": false,
      "typeList": [
      ]
    }
    """.utf8)
    }
  }
}
