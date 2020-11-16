//
//  AppCoordinator.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit
class AppCoordinator: Coordinator{
    let window: UIWindow
    init(window: UIWindow) {
        self.window = window
    }
    func Start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        let fristViewControllerCoordinator = FristVCCoordinator(navigationController: navigationController)
        coordinate(to: fristViewControllerCoordinator)
    }
    
    
}
