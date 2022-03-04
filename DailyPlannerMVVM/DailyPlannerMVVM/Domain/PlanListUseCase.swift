//
//  PlanListUseCase.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
import RxSwift
import RxCocoa

protocol PlanListUseCaseType {
    
    func getPlanList() -> Observable<[Plan]>
}

struct PlanListUseCase: PlanListUseCaseType {
    func getPlanList() -> Observable<[Plan]> {
        return RealmHelper.sharedInstance.fetchFavoriteList()
    }

}
