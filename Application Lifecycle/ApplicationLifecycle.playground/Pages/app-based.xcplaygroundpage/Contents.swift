/*:
 # 2. UIApplicationDelegate
 */
/*:

 # AppDelegate

 - Único ciclo de vida do iOS até a v12
 - Responsável pelo ciclo de vida do aplicativo

 # Principais métodos
 
 ## Início do aplicativo:
 - application(_:willFinishLaunchingWithOptions:)
 - application(_:didFinishLaunchingWithOptions:)

 ## Ao entrar em primeiro plano:
 - applicationWillEnterForeground(_:)
 - applicationDidBecomeActive(_:)

 ## Em segundo plano:
 - applicationWillResignActive(_:)
 - applicationDidEnterBackground(_:)
    - Para tempo extra: beginBackgroundTask (expirationHandler :)

 ## Ao finalizar:
 - applicationWillTerminate(_:)

 # Métodos por estado

  ![AppDelegate](app-delegate.jpeg)

 */

//: [Previous](@previous) | [Next](@next)
