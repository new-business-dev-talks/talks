//: 🎯 *Para visualizar o arquivo renderizado: Editor > Show Rendered Markup*
/*:
 ****
 
 ### Swift Developer Roadmap
 # MVVM
 ## Model 🔸 View 🔸 ViewModel
 
 ****
 
 
 
 ### Conteúdo:
 - **[Conceitos](Definition)**
 - **[Boas práticas](Guideline)**
 - **[Referências](References)**
 
 */

import UIKit

var str = "Hello, MVVM"



/*:

 # Conceitos

 */

//: > *Model/View/ViewModel is a variation of Model/View/Controller (MVC) that is tailored for modern UI development platforms where the View is the responsibility of a designer rather than a classic developer. — John Gossman, 2005*

//: > *MVVM é um padrão arquitetural de software que facilita a separação do desenvolvimento da interface gráfica do desenvolvimento da lógica de negócios*

/*:
 ## MVC x MVVM
 
 O MVC geralmente é o primeiro padrão que temos contato ao iniciar o desenvolvimento iOS.
 
 Até hoje ele é o padrão recomendado pela Apple:
 
 ![mvc-apple](mvc-1.png)
 
 
 
 Na prática, mesmo sabendo que a ViewController e a View são componentes tecnicamente distintos, o que acontece é que ViewController e View andam de mão dadas e isso acaba nos levando ao famoso caso do **Massive View Controller**
 
 ![mvc-real](mvc-2.png)
 
 
 O padrão MVVM adicionou uma camada (ViewModel) nesse diagrama deixando mais claro o local onde devemos colocar a lógica de acesso ao Model.
 
 ![mvvvm-diagram](mvvm-1.png)
 
 *"O termo ViewModel significa "Model de uma View" que fornece uma especialização do Model que a View pode usar para vinculação de dados (data-binding). A ViewModel contém transformadores de dados que convertem tipos de modelo em tipos de exibição e contém também comandos que a View pode usar para interagir com o modelo" — John Gossman*
 
 Pontanto, na ViewModel, não "mexemos" diretamente na View. Lidamos com a lógica de negócios no ViewModel e, então, a View se altera de acordo. Escrevemos coisas de apresentação, como converter Date em String no ViewModel em vez da View.
 
 Por fim, torna-se possível escrever um teste mais simples para a lógica de apresentação sem conhecer a implementação da View.
 
 */

/*:

 # Boas práticas
 

 
 ✅ O que seu ViewModel deve fazer:
 - Conhecer o (Model || Repository) para fornecer os dados que a View precisa
 - Validações de regras de apresentação
 - Fornecer métodos para que a View possa requisitar ações referentes ao Model
 - Ter bindings para notificar a View sobre (alterações || erros) do Model
 
 
 
 🚫 O que seu ViewModel **NÃO** deve fazer:
 - Conhecer a instância da View
 - Ter regras de exibição da View como loading, status, ciclo de vida..
 - Ter (delegates || regras) de navegação

 */

/*:

 ### Referências
 
  * [**Introduction to MVVM** - John Gossman](https://learn.microsoft.com/en-gb/archive/blogs/johngossman/introduction-to-modelviewviewmodel-pattern-for-building-wpf-apps)
  * [**Introduction to MVVM** - Objc.io](https://www.objc.io/issues/13-architecture/mvvm/)
  * [**Model-View-Viewmodel And Swift** - Cocoacasts](https://cocoacasts.com/collections/model-view-viewmodel-and-swift)
  * [**Model–view–viewmodel** - Wikipedia](https://en.wikipedia.org/wiki/Model–view–viewmodel)

 */
