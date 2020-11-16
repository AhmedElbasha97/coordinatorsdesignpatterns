//
//  coordinators.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit
protocol Coordinator {
    func Start ()
    func coordinate (to coordinator: Coordinator)
}
extension Coordinator{
    func coordinate(to coordinator: Coordinator){
        coordinator.Start()
    }
}
