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
    
    var userID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        userIDLabel.text = userID
        
        /*let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors  = [
            UIColor.systemPink.cgColor,
            UIColor.systemOrange.cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        */
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
