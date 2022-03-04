//
//  CityListView.swift
//  DailyPlannerMVVM
//
//  Created by MacOS on 4.03.2022.
//

import Foundation
import UIKit
import Material

class PlanListView: UIView {
    
    lazy var cityListContentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    lazy var cityListToolBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xF3F3F3)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var cityListFilterButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "filter.png")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
       // button.imageEdgeInsets = EdgeInsets(top: 5 , left: 5, bottom: 5, right: 5)
        button.clipsToBounds = true
        return button
    }()
    
    lazy var cityListSortButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "gridFill.png")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.imageEdgeInsets = EdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()

    
    lazy var characterListToolBarLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var planListCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
