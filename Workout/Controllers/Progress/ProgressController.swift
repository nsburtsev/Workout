//
//  ProgressController.swift
//  Workout
//
//  Created by Нюргун on 02.08.2023.
//

import UIKit

class ProgressController: WABaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Workout Progress"
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}
