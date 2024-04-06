//
//  MemoryMissonVC.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

class MemoryMissonVC: UIViewController {

    // MARK: - Life Cycle
    override func loadView() {
        super.loadView()
        view = MemoryMissonView(totalCount: 3)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
