//: *Framework: UserNotifications*
/*:
 ****

 ##### Configuração

 - Solicitar autorização para receber notificações
 - A Apple sugere concluir isso ao iniciar o aplicativo usando o método: *application:didFinishLaunchingWithOptions:*

 ##### Setup

 1. No **AppDelegate** é necessário importar o `framework` *UserNotifications*:

 ```
 import UserNotifications
 ```
****
 2. Criar uma nova propriedade do tipo `UNUserNotificationCenter`

 ```
 let notificationCenter = UNUserNotificationCenter.current()
 ```

****
 3. Declarar as opções disponíveis para as notificações

 ```
 let options: UNAuthorizationOptions = [.alert, .sound, .badge]
 ```

****
 4. Solicitar permissão ao usuário para enviar notificações ao aplicativo

 ```
 notificationCenter.requestAuthorization(options: options) { didAllow, error in
     if !didAllow {
        print("User has declined notifications")
     }
 }
 ```

****
 5. Assinar o delegate da central de notificação

 ```
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     ...
     notificationCenter.delegate = self
     ...
 }
 ```

****
 5.1 Os métodos obrigatórios do **UNUserNotificationCenterDelegate** são:

 ```
 func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void)

 func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
 ```
 */

//: [Previous](@previous) | [Next](@next)
