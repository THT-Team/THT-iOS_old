//
//  NotificationHandler.swift
//  Feature
//
//  Created by Kanghos on 9/1/24.
//  Copyright © 2024 THT. All rights reserved.
//

import UIKit

public final class NotificationHandler: NSObject {
  public static let shared = NotificationHandler()

  private override init() { }

  public func registerForRemoteNotifications() {
    let center = UNUserNotificationCenter.current()
    center.delegate = self
    let options: UNAuthorizationOptions = [.alert, .badge, .sound]
    center.requestAuthorization(options: options) { granted, error in

      guard granted else { return }

      DispatchQueue.main.async {
        UIApplication.shared.registerForRemoteNotifications()
      }
    }
  }
}

extension NotificationHandler: UNUserNotificationCenterDelegate {
  public func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    completionHandler([.banner, .badge, .sound])
  }

  public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    completionHandler()
  }
}
