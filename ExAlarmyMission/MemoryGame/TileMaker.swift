//
//  TileMaker.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

struct TileMaker {
    static func makeMatrix(row: Int = 3, columm: Int = 3) -> UIStackView {
        let colummStackView = UIStackView()
        colummStackView.axis = .vertical
        colummStackView.spacing = 2
        colummStackView.distribution = .fillEqually
        
        for _ in (1...row) {
            let rowStackView = UIStackView()
            rowStackView.axis = .horizontal
            rowStackView.spacing = 2
            rowStackView.distribution = .fillEqually
            for _ in (1...columm) {
                let tile = MemoryTileView()
                rowStackView.addArrangedSubview(tile)
            }
            
            colummStackView.addArrangedSubview(rowStackView)
        }
        
        return colummStackView
    }
}
