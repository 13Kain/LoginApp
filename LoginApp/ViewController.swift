//
//  ViewController.swift
//  LoginApp
//
//  Created by Никита on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotPswrdButton: UIButton!
    @IBOutlet var forgotLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func forgotLoginButtonPressed() {
        showAlert(title: "Hack me", message: "My login is admin")
    }
    
    @IBAction func forgotPswrdButtonPressed() {
        showAlert(title: "Hack me", message: "My password is admin")
    }
    
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

