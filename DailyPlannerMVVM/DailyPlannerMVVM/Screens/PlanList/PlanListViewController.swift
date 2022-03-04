//
//  CityListViewController.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
import RxCocoa
import RxSwift
import RxGesture
import Kingfisher
import Action
import UIKit

class CharacterListViewController : UIViewController, BindableType, UICollectionViewDelegate{
    private let cellIdentifier = String(describing: PlanListCell.self)
    let disposeBag = DisposeBag()
    var planListView = PlanListView()
    var viewModel:  PlanListViewModel!
    var planList = [Plan]()
    
    override func loadView() {
        view = planListView
    }
    
    override func viewDidLoad() {
        registerCollectionView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        planListView.planListCollectionView.reloadData()
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0xF5F5F5)
    }


    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        
    }
    
    func registerCollectionView() {
     planListView.planListCollectionView.delegate = self
     planListView.planListCollectionView.register(PlanListCell.self, forCellWithReuseIdentifier: "CharacterListCell")
     planListView.planListCollectionView.collectionViewLayout = gridFlowLayout
    }
}
