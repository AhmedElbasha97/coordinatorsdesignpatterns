//
//  ViewController.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var coordinator: ThirdVCFlow?
    @IBOutlet weak var navigateToFristVC: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func navigateToTheFristVCAction(_ sender: Any) {
        coordinator?.coordinatorToTheFristVC()
    }
}

