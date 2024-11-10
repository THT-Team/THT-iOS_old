//
//  APIError.swift
//  Falling
//
//  Created by Kanghos on 2023/07/11.
//

import Foundation

public enum NetworkError: Error, LocalizedError {
  case serverError

  public var errorDescription: String? {
    switch self {
    case .serverError:
      return "code 500: 서버 응답 없음 에러"
    }
  }
}
