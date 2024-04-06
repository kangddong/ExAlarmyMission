//
//  MemoryMissonView.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

final class MemoryMissonView: UIView {
    
    private let correctCount: Int
    
    private let correctResultLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        return label
    }()
    
    init(correctCount: Int = 3) {
        self.correctCount = correctCount
        super.init(frame: .zero)
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview(traits: .defaultLayout, body: {
    MemoryMissonView(correctCount: 3)
})
