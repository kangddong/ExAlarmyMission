//
//  MissonModel.swift
//  ExAlarmyMission
//
//  Created by 강동영 on 4/6/24.
//

import Foundation

final class MissonModel {
    static let types: [MissonType] = MissonType.allCases
}

enum MissonType: CaseIterable {
    case mental
    case body
    
    var title: String {
        switch self {
        case .mental:
            "정신부터 깨우는 미션"
        case .body:
            "몸부터 깨우는 미션"
        }
    }
             
    var dataSource: [String] {
        switch self {
        case .mental:
            ["기억력 게임", "따라쓰기", "수학문제", "부호 맞추기"]
        case .body:
            ["걷기", "QR/바코드", "흔들기", "사진 찍기", "스쿼트"]
        }
    }
    
//    var destination: UIViewController? {
//        
//    }
}

//enum MentalMission {
//    case "기억력 게임", "따라쓰기", "수학문제", "부호 맞추기"
//}
