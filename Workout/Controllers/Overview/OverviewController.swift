//
//  OverviewController.swift
//  Workout
//
//  Created by Нюргун on 28.07.2023.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        navigationController?.navigationBar.isHidden = true
    }
}
