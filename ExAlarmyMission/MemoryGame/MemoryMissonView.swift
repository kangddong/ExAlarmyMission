//
//  MemoryMissonView.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import UIKit

final class MemoryMissonView: UIView {
    
    private let correctCount: Int = 0
    private let totalCount: Int
    
    private lazy var correctResultLabel: BasePaddingLabel = {
        let label: BasePaddingLabel = .init(padding: UIEdgeInsets(top: 8.0, left: 16.0, bottom: 8.0, right: 16.0))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .darkGray
        label.textColor = .label
        label.font = .systemFont(ofSize: 30)
        label.text = "\(correctCount)/\(totalCount)"
        label.textAlignment = .center
        label.layer.cornerRadius = 16
        
        return label
    }()
    private let matrixView: UIStackView = {
        let stackView = TileMaker.makeMatrix()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    init(totalCount: Int = 3) {
        self.totalCount = totalCount
        super.init(frame: .zero)
        backgroundColor = .systemBackground
        addSubviews()
        addConstraints()
    }
    
    init(totalCount: Int = 3, frame: CGRect) {
        self.totalCount = totalCount
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Method
extension MemoryMissonView {
    func addSubviews() {
        addSubview(correctResultLabel)
        addSubview(matrixView)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            correctResultLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            correctResultLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            correctResultLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            matrixView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            matrixView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            matrixView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            matrixView.heightAnchor.constraint(equalTo: matrixView.widthAnchor)
        ])
    }
}

#Preview(traits: .fixedLayout(width: 100, height: 100), body: {
    MemoryMissonView(totalCount: 3,frame: CGRect(x: 0, y: 0, width: 100, height: 100))
})
