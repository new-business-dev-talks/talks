import UIKit
import PlaygroundSupport

// MARK: - Sample MVC

let sampleMVC = SampleMVCViewController()

// MARK: - FlowController with Container

let flowController = FlowController()

// MARK: - TabBar

let tabController = UITabBarController()
tabController.setViewControllers([sampleMVC, flowController], animated: true)
PlaygroundPage.current.liveView = tabController
