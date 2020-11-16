//
//  SecondVCCoordinator.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//
import UIKit
protocol secoundVCFlow {
    func coordinatorToTheThirdVC()

}
class SecondVCCoordinator: Coordinator, secoundVCFlow {

    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
   
    func Start() {
        let storyBoardBundle = Bundle.main
        let storyBoard = UIStoryboard(name: "Main", bundle: storyBoardBundle)
        let SecoundVC = storyBoard.instantiateViewController(identifier: "SecoundViewController") as! SecoundViewController
        SecoundVC.coordinator = self
        navigationController.pushViewController(SecoundVC, animated: true)
    }
    
    func coordinatorToTheThirdVC() {
         let thirdVCCordenator = ThirdVCCoordinator(navigationController: navigationController)
                coordinate(to: thirdVCCordenator)
            }
     }
    
    

