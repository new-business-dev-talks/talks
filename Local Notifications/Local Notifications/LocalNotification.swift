//
//  LocalNotification.swift
//  Local Notifications
//
//  Created by Felipe Ribeiro Mendes on 01/06/20.
//  Copyright © 2020 Felipe Mendes. All rights reserved.
//

import Foundation
import UserNotifications

public class LocalNotification {

    // MARK: - PRIVATE PROPERTIES

    private let centerNotification = UNUserNotificationCenter.current()

    // MARK: - INITIALIZER

    public init() { }

    // MARK: - PUBLIC APIs

    public func schedule(for content: UNMutableNotificationContent, timeInterval: TimeInterval, identifier: String) {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        centerNotification.add(request)
    }

    public func unschedule(for identifiers: [String]) {
        centerNotification.removePendingNotificationRequests(withIdentifiers: identifiers)
        centerNotification.removeDeliveredNotifications(withIdentifiers: identifiers)
    }
}
