//
//  MainViewController.swift
//  Local Notifications
//
//  Created by Felipe Ribeiro Mendes on 01/06/20.
//  Copyright © 2020 Felipe Mendes. All rights reserved.
//

import UIKit
import UserNotifications

public class MainViewController: UIViewController {

    // MARK: - PRIVATE PROPERTIES

    private var notificationContent: [NotificationContent]?

    // MARK: - UI

    private lazy var scheduleAllButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(scheduleAllButtonTapped), for: .touchUpInside)
        view.setTitle("Agendar todas notificações", for: .normal)
        return view
    }()

    private lazy var unscheduleSingleButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(unscheduleSingleButtonTapped), for: .touchUpInside)
        view.setTitle("Cancelar segunda notificações", for: .normal)
        return view
    }()

    private lazy var unscheduleAllButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(unscheduleAllButtonTapped), for: .touchUpInside)
        view.setTitle("Cancelar todas notificações", for: .normal)
        return view
    }()

    // MARK: - LIFE CYCLE

    override public func viewDidLoad() {
        super.viewDidLoad()
        constraintUI()
        self.notificationContent = retrieveNotifications()
    }

    // MARK: - SETUP

    private func constraintUI() {
        view.backgroundColor = .white

        view.addSubview(scheduleAllButton)
        view.addSubview(unscheduleSingleButton)
        view.addSubview(unscheduleAllButton)

        NSLayoutConstraint.activate([
            scheduleAllButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            scheduleAllButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scheduleAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            unscheduleSingleButton.topAnchor.constraint(equalTo: scheduleAllButton.bottomAnchor),
            unscheduleSingleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            unscheduleSingleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            unscheduleAllButton.topAnchor.constraint(equalTo: unscheduleSingleButton.bottomAnchor),
            unscheduleAllButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            unscheduleAllButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

    // MARK: - SELECTORS

    @objc private func scheduleAllButtonTapped() {
        notificationContent?.forEach { $0.scheduleNotification() }
    }

    @objc private func unscheduleAllButtonTapped() {
        notificationContent?.forEach { $0.unscheduleNotification() }
    }

    @objc private func unscheduleSingleButtonTapped() {
        notificationContent?.forEach { $0.unscheduleNotification(["second-local-notification"]) }
    }
}

// MARK: - RETRIEVE NOTIFICATIONS

extension MainViewController {
    private func retrieveNotifications() -> [NotificationContent] {
        var notifications = [NotificationContent]()

        notifications.append(NotificationContent(identifier: "first-local-notification",
                                                 title: "First Local Notification",
                                                 body: "This is the first local notification",
                                                 timeInterval: 5))

        notifications.append(NotificationContent(identifier: "second-local-notification",
                                                 title: "Second Local Notification",
                                                 body: "This is the third local notification",
                                                 timeInterval: 15))

        return notifications
    }
}
