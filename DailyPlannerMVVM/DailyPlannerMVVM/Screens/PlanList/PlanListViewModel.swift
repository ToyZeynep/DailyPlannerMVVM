//
//  CityListViewModel.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
import RxSwift
import XCoordinator
import Action
protocol PlanListViewModelInput {
    
  var selectedPlan: AnyObserver<Plan> { get }
}
protocol PlanListViewModelOutput {
    var planListResponse: PublishSubject<[Plan]> { get }
    var planList: PublishSubject<[Plan]> { get }
    
}
protocol PlanListViewModelStoredProperties {
    var planListUseCase : PlanListUseCase { get }
    
}

protocol PlanListViewModel {
    var input: PlanListViewModelInput { get }
    var output: PlanListViewModelOutput { get }
    var storedProperties : PlanListViewModelStoredProperties { get }
}

extension PlanListViewModel where Self: PlanListViewModelInput & PlanListViewModelOutput & PlanListViewModelStoredProperties {
    var input: PlanListViewModelInput { return self }
    var output: PlanListViewModelOutput { return self }
    var storedProperties: PlanListViewModelStoredProperties { return self }
}
