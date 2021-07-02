//
//  CounterModel.swift
//  Salon_Task4
//
//  Created by 相良 詠斗 on 2021/06/29.
//

import Foundation

class CounterModel {
    static let notificationName = "CounterModel"
    let notificationCenter = NotificationCenter()
    private var count = 0 {
        didSet {
            notificationCenter.post(
                name: .init(rawValue: CounterModel.notificationName),
                object: count
            )
        }
    }
    // 値の更新処理
    func countPlus() { count += 1 }
    func countClear() { count = 0 }
}
