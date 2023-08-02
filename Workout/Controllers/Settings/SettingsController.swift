//
//  SettingsController.swift
//  Workout
//
//  Created by Нюргун on 02.08.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
}
