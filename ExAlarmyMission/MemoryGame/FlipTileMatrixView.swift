//
//  FlipTileMatrixView.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/7/24.
//

import UIKit

final class FlipTileMatrixView: UIStackView {
    private var row: Int = 3
    private var columm: Int = 3
    
    init(row: Int = 3, columm: Int = 3) {
        super.init(frame: .zero)
        self.row = row
        self.columm = columm
        makeMatrix()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func startMisson() {
        print(#function)
    }
}

extension FlipTileMatrixView {
    private func makeMatrix() {
        axis = .vertical
        spacing = 2
        distribution = .fillEqually
        print("row: \(row), columm: \(columm)")
        for _ in (1...row) {
            let rowStackView = UIStackView()
            rowStackView.axis = .horizontal
            rowStackView.spacing = 2
            rowStackView.distribution = .fillEqually
            for _ in (1...columm) {
                let tile = FlipTileView()
                rowStackView.addArrangedSubview(tile)
            }
            self.addArrangedSubview(rowStackView)
        }
    }
}
