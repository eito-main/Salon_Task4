//
//  ViewController.swift
//  Salon_Task4
//
//  Created by 相良 詠斗 on 2021/06/29.
//

import UIKit

class CounterView: UIView {

    @IBOutlet weak var countLabel: UILabel!
    public func render(count: Int) {
        countLabel.text = String(count)
    }
}
