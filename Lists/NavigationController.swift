//
//  NavigationController.swift
//  Lists
//
//  Created by West Kraemer on 7/26/18.
//  Copyright © 2018 Noble Desktop. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.setBackgroundImage(UIImage(named: "NavigationBackground"), for: UIBarMetrics.default)
    }
}
