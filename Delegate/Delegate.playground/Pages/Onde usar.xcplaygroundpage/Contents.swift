/*:
 ## 👩🏾‍💻
 ## Muito presente nos frameworks da Apple.
 */
/*:
 ### Como por exemplo:
 * UITableView, com o UITableViewDelegate
 * UITextView, com o UITextViewDelegate
 * [...]
 */
import UIKit

class SampleClass: UIViewController { }
extension SampleClass: UITableViewDelegate { }
extension SampleClass: UITextFieldDelegate { }

/*:
 💡 Data Source não é Delegate, mas sim um outro Pattern.
 */
/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
