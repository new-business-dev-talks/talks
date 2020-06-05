//: *Framework: UserNotifications*
/*:
 ****

 #### Agendar notificação por horário

 - No disparo por horário deve ser definido o tempo em segundos:

 ```swift
 let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
 ```

 - Em seguida, é necessário adicionar a requisição à central de notificações


 ```swift
 let identifier = "UserNotificationIdentifier"
 let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)

 notificationCenter.add(request) { (error) in
     if let error = error {
        print("Error \(error.localizedDescription)")
     }
 }
 ```
 */

//: [Previous](@previous) | [Next](@next)
