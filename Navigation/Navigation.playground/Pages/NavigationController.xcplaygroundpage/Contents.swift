/*:
# 2. UINavigationController
*/
/*:
## class UINavigationController : UIViewController
 
 A navigation controller is a container view controller that manages one or more child view controllers in a navigation interface. In this type of interface, only one child view controller is visible at a time. Selecting an item in the view controller pushes a new view controller onscreen using an animation, thereby hiding the previous view controller. Tapping the back button in the navigation bar at the top of the interface removes the top view controller, thereby revealing the view controller underneath.
 */
/*:
 ![image](sample4.jpg)
*/


/*:
 ## func pushViewController(UIViewController, animated: Bool)
>Pushes a view controller onto the receiver’s stack and updates the display.
*/
/*:
 ## func popViewController(animated: Bool) -> UIViewController?
>Pops the top view controller from the navigation stack and updates the display.
*/
/*:
 ## func popToRootViewController(animated: Bool) -> [UIViewController]?
>Pops all the view controllers on the stack except the root view controller and updates the display.
*/
/*:
 ## func popToViewController(UIViewController, animated: Bool) -> [UIViewController]?
>Pops view controllers until the specified view controller is at the top of the navigation stack.
*/

//: [Pop](@previous) | [Push](@next)
