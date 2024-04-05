//
//  MemoryTileView.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

protocol MemoryTileViewAble {
    func tappedView()
    func flip()
}

final class MemoryTileView: UIView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
