//
//  fristVCCoordinator.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit
protocol FristVCFlow: class {
    func coordinatorToTheSecondVC()
}
class FristVCCoordinator: Coordinator, FristVCFlow {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
   
    func Start() {
        let storyBoardBundle = Bundle.main
        let storyBoard = UIStoryboard(name: "Main", bundle: storyBoardBundle)
        let fristVC = storyBoard.instantiateViewController(identifier: "FristViewController") as! FristViewController
        fristVC.coordinator = self
        navigationController.pushViewController(fristVC, animated: true)
    }
    
    func coordinatorToTheSecondVC() {
        let secounVCCordenator = SecondVCCoordinator(navigationController: navigationController)
        coordinate(to: secounVCCordenator)
    }
    
    
}
