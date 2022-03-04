//
//  CityListViewModelImpl.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class PlanListViewModelImpl: PlanListViewModel, PlanListViewModelInput, PlanListViewModelOutput, PlanListViewModelStoredProperties {
    
    private(set) lazy var selectedPlan = selectedPlanActions.inputs
    
    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    
    // MARK: -Actions-
    
    lazy var selectedPlanActions = Action<Plan, Void> { [unowned self] planDetails in
        self.router.rx.trigger(.planDetails(planDetails: planDetails))
    }
    
    // MARK: -Outputs-
    var planListResponse = PublishSubject<[Plan]>()
    var planList = PublishSubject<[Plan]>()
    
    // MARK: -Stored properties-
    
    private let router : UnownedRouter<PlanListRoute>
    var planListUseCase = PlanListUseCase()
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<PlanListRoute> ) {
        self.router = router
        
    }
    func fetchPlanList() {
        
        planListUseCase.getPlanList().subscribe(onNext: { [self] response in
            
            if response != nil {
                self.planListResponse.onNext(response)
            }
        }).disposed(by: disposeBag)
    }
}
