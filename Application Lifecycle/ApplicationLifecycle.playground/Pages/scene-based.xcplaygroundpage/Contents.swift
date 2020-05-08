/*:
 # 3. UISceneDelegate
 */
/*:

 # SceneDelegate

 - Chegou no iOS 13
 - Responsável por instância de interface
 - Resultado do novo suporte ao *multi-window*

 > Cenas estão lá para lidar com uma instância da interface do usuário do seu aplicativo. [Paul Hudson](https://www.hackingwithswift.com/articles/193/whats-new-in-ios-13)


 # Principais métodos

 ## Ao entrar em primeiro plano:
 - sceneWillEnterForeground(_:)
 - sceneDidBecomeActive(_:)

 ## Em segundo plano:
 - sceneWillResignActive(_:)
 - sceneDidEnterBackground(_:)

 ## Ao adicionar uma nova cena:
 - scene(_:willConnectTo:options:)

 ## Remove a cena do aplicativo:
 - sceneDidDisconnect(_:)

 ![Scene Based](scene-based.png)

 */

//: [Previous](@previous) | [Next](@next)
