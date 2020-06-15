/*:
 # 1. Conceitos
 */
/*:

 ## Foundation URL Loading System
 
 *" Interage com URLs e comunica com servidores usando protocolos padrão da Internet. "* (Apple Documentation)

 - É usado uma instância URLSession para criar uma ou mais instâncias URLSessionTask, que podem buscar e retornar dados ao seu aplicativo, baixar arquivos, etc (Apple Documentation)
 

 ## NSURLConnection
 
 *" Objeto que permite iniciar e parar requisisões de URL. "* (Apple Documentation)

 - Criado em 2003
 - O nome se refere a um grupo de componentes que formam o URL Loading System: NSURLRequest, NSURLResponse, NSURLProtocol, NSURLCache, NSHTTPCookieStorage, NSURLCredentialStorage.
 - Parte do Framework Foundation
 - *"This API is considered legacy. Use URLSession instead."* (Apple Documentation)


## AFNetworking

*" Biblioteca de rede construída com base no URL Loading System."* (AFNetworking GitHub)

 - Criado em 2012
 - Escrito em Objective-C
 - Baseado no NSURLConnection a princípio

 
 ## URLSession
 
 *" Fornece uma API para baixar e fazer upload de dados para endpoints indicados por URLs. "* (Apple Documentation)

 - Criado em 2013
 - Sucessor do NSURLConnection
 - Parte do Framework Foundation

 
 ## Alamofire
 
 *"Alamofire é uma biblioteca de rede HTTP escrita em Swift."* (Alamofire GitHub)
 
 - Criado em 2014
 - Sucessor do AFNetworking
 - Precisa ser adicionado como dependência externa
 - Open sourced framework que faz parte do Alamofire Software Foundation (Image and NetworkActivityIndicator)
 - Baseado no URLSession e nas subclasses do URLSessionTask
 - Foco: fornecer uma interface com as principais tarefas para realizar o tráfego de dados no aplicativo de forma simples e prática
 - Confira a [história do nome](https://aggie-horticulture.tamu.edu/wildseed/alamofire.html) Alamofire

 */

/*:
****
[Anterior](@previous) | [Próxima](@next)
*/
