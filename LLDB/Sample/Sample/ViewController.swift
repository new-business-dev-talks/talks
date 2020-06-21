//
//  ViewController.swift
//  Sample
//
//  Created by Roberth Henrique Siqueira on 03/06/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var labelText: String = "Swift Developer Roadmap"
    var counter: Int = 0

    override func loadView() {
        setupView()

        printSample()
        poSample()
        watchingSample()
        expressionSample()
        crazyExpressionSample()
    }

    private func setupView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }

    private func printSample() {
        let zero = counter
    }

    private lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 150, y: 227, width: 254, height: 27))
        label.text = labelText
        return label
    }()

    private func poSample() {
        view.addSubview(label)
    }


    private func watchingSample() {
        counter = 7
    }

    private func expressionSample() {
        labelText = "Vencer Vencer Vencer"
        label.text = labelText
    }

    private func crazyExpressionSample() {
        // background
        // add view
        // 🤯
    }
}
