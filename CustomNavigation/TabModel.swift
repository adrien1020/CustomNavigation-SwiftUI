//
//  TabModel.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 19/08/2024.
//

import Foundation

enum TabModel: String, CaseIterable {
    case accounts = "dollarsign"
    case home = "house"
    case car  = "car.side"
    case marital = "figure.stand.line.dotted.figure.stand"
    case review = "checkmark.circle"
    
    var title: String {
        switch self {
        case .accounts:
            "Accounts"
        case .home:
            "Home Office"
        case .car:
            "Vehicle"
        case .marital:
            "Status"
        case .review:
            "Review & Play"
        }
    }
}
