//
//  SecoundViewController.swift
//  coordinatorsdesignpatterns
//
//  Created by ahmedelbash on 11/16/20.
//  Copyright © 2020 ahmedelbash. All rights reserved.
//

import UIKit

class SecoundViewController: UIViewController {
 
 var coordinator: secoundVCFlow?
    @IBOutlet weak var navigateToTheThirdVC: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateToTheThirdVCAction(_ sender: Any) {
        coordinator?.coordinatorToTheThirdVC()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
