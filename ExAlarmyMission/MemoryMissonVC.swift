//
//  MemoryMissonVC.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

class MemoryMissonVC: UIViewController {

    private let missionView: MemoryMissonView = .init(totalCount: 3)
    
    // MARK: - Life Cycle
    override func loadView() {
        super.loadView()
        view = missionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        missionView.startMission()
    }
}

#Preview(traits: .defaultLayout, body: {
    MemoryMissonVC()
})
