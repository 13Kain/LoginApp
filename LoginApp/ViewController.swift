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
    
    @IBOutlet var passwordUserField: UITextField!
    @IBOutlet var loginUserField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func forgotLoginButtonPressed() {
        showAlert(title: "Hack me", message: "My login is admin")
    }
    
    @IBAction func forgotPswrdButtonPressed() {
        showAlert(title: "Hack me", message: "My password is admin")
    }
    
    @IBAction func loginButtonPressed() {
        if passwordUserField.text != "admin", loginUserField.text != "admin" {
                showAlert(title: "Invalid login or password", message: "Please try again")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingsVC = segue.destination as? GreetingsViewController else { return }
        greetingsVC.userID = loginUserField.text
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

