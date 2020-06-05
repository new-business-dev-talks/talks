//
//  NotificationContent.swift
//  Local Notifications
//
//  Created by Felipe Ribeiro Mendes on 01/06/20.
//  Copyright © 2020 Felipe Mendes. All rights reserved.
//

import Foundation
import UserNotifications

public struct NotificationContent: Codable {
    public let identifier: String
    public let title: String
    public let body: String
    public let timeInterval: TimeInterval

    public init(identifier: String, title: String, body: String, timeInterval: TimeInterval) {
        self.identifier = identifier
        self.title = title
        self.body = body
        self.timeInterval = timeInterval
    }

    public func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = self.title
        content.body = self.body
        content.sound = UNNotificationSound.default
        content.badge = nil

        LocalNotification().schedule(for: content,
                                     timeInterval: self.timeInterval,
                                     identifier: self.identifier)
    }

    public func unscheduleNotification(_ identifiers: [String]? = nil) {
        LocalNotification().unschedule(for: identifiers ?? [self.identifier])
    }
}
