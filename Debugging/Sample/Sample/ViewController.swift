//
//  ViewController.swift
//  Sample
//
//  Created by Roberth Henrique Siqueira on 03/06/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view

        exceptionBreakpoint()
//        poBreakpoint()
//        conditionBreakpoint()
//        ignoresBreakpoint()
//        continueBreakpoint()
//        expressionBreakpoint()
//        imageBreakpoint()
    }

    func exceptionBreakpoint() {
        let stringArray: NSArray = []
        _ = stringArray[3]
    }

    func poBreakpoint() {
        var swiftString = "Swift Developer Roadmap"
        print("🖨")
    }

    func conditionBreakpoint() {
        let numbers: [Int] = [2, 4, 6, 7, 8, 9]
        numbers.forEach { num in
            return
        }
    }

    func ignoresBreakpoint() {
        let vowels: [String] = ["a", "e", "i", "o", "u"]
        vowels.forEach({ _ in // five times
            print("🔡")
        })
    }

    func continueBreakpoint() {
        print("🚀")
    }

    func expressionBreakpoint() {
        var number = 0
        print("🤯")
    }

    func imageBreakpoint() {
        let image = #imageLiteral(resourceName: "swift")
        return
    }
}

