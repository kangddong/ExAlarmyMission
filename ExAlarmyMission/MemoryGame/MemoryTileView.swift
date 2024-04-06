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

final class MemoryTileView: UIView, MemoryTileViewAble {
    let correctColor: UIColor = .systemOrange
    let defaultColor: UIColor = .darkGray
    
    init() {
        super.init(frame: .zero)
        backgroundColor = defaultColor
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedView)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedView() {
        flip()
    }
    
    func flip() {
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: self, duration: 1.0, options: transitionOptions, animations: {
            self.backgroundColor = self.correctColor
        })
    }
}
