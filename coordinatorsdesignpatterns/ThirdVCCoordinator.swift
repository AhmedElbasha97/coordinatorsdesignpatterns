//
//  ThirdVCCoordinator.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit
protocol ThirdVCFlow {
    func coordinatorToTheFristVC()

}
class ThirdVCCoordinator: Coordinator, ThirdVCFlow {

    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
   
    func Start() {
        let storyBoardBundle = Bundle.main
        let storyBoard = UIStoryboard(name: "Main", bundle: storyBoardBundle)
        let thirdVC = storyBoard.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        thirdVC.coordinator = self
        navigationController.pushViewController(thirdVC, animated: true)
    }
    
    func coordinatorToTheFristVC() {
         let fristVCCordenator = FristVCCoordinator(navigationController: navigationController)
                     coordinate(to: fristVCCordenator)
     }
    
    
}

