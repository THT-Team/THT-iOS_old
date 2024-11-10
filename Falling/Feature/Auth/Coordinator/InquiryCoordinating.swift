//
//  InquiryCoordinator.swift
//  AuthInterface
//
//  Created by Kanghos on 7/21/24.
//

import Foundation



public protocol InquiryCoordinatingDelegate: AnyObject {
  func detachInquiry(_ coordinator: Coordinator)
  func attachInquiry()
}

public protocol InquiryCoordinating: Coordinator {
  var delegate: InquiryCoordinatingDelegate? { get set }

  func homeFlow()
}
