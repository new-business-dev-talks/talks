//
//  AppDelegate.swift
//  Local Notifications
//
//  Created by Felipe Ribeiro Mendes on 01/06/20.
//  Copyright © 2020 Felipe Mendes. All rights reserved.
//

import UIKit

/// Importar o framework
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let notificationCenter = UNUserNotificationCenter.current()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = MainViewController()

        handleUserNotifications()

        return true
    }

    private func handleUserNotifications() {
        /// Definir as variações das notificações
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]

        /// Solicitar permissão para receber notificações
        notificationCenter.requestAuthorization(options: options) { didAllow, error in
            if !didAllow {
                print("User has declined notifications")
            }
        }

        /// Definir o delegate da central de notificação
        notificationCenter.delegate = self
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        completionHandler()
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }
}
