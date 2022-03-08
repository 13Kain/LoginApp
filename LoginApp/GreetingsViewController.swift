//
//  GreetingsViewController.swift
//  LoginApp
//
//  Created by Nikita Yashin on 08.03.2022.
//

import UIKit

class GreetingsViewController: UIViewController {

    @IBOutlet var logoutButton: UIButton!
    @IBOutlet var userIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

}
