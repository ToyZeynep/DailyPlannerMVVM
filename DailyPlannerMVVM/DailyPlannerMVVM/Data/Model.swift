//
//  Model.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
struct Plan {
    var name: String?
    var completionTime: Date?
    var isComplete: Bool?
    var details: String?
    var priority: String?
    var willNotify: Bool?
    var category: String?
}
