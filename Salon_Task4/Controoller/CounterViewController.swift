//
//  CounterViewController.swift
//  Salon_Task4
//
//  Created by 相良 詠斗 on 2021/06/29.
//

import UIKit

class CounterViewController: UIViewController {
    
    private var counterModel = CounterModel()
    
    @IBOutlet var counterView: CounterView!
    @IBAction func plusButtonAction(_ sender: Any) {
        counterModel.countPlus()
    }
    @IBAction func clearButtonAction(_ sender: Any) {
        counterModel.countClear()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterModel.notificationCenter.addObserver(
            self,
            selector: #selector(self.handleCountChange(_:)),
            name: .init(NSNotification.Name(rawValue: CounterModel.notificationName)), object: nil
            )
    }
    
    @objc func handleCountChange(_ notification: Notification) {
        if let count = notification.object as? Int {
            // Viewに描画処理を依頼する
            counterView.render(count: count)
        }
    }
}
