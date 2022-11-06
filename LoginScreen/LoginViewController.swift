//
//  ViewController.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 06.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var forgotLoginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    var login = ""
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
        loginTF.layer.cornerRadius = 10
        passwordTF.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = loginTF.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
    @IBAction func logOutPressButton(_ unwindSegue: UIStoryboardSegue) {
        loginTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        login = loginTF.text!.trimmingCharacters(in: .whitespaces)
        password = passwordTF.text!.trimmingCharacters(in: .whitespaces)
        
        if login.isEmpty || password.isEmpty {
            alert(message: "Please fill Login and Password")
        } else if login != "Ruslan" || password != "1234" {
            alert(message: "Please fill corect Login or Password")
        }
    }
        
    @IBAction func rememberLoginPass(_ sender: UIButton) {
            switch sender {
            case forgotLoginButton:
                alert(message: "You login 'Ruslan'")
            case forgotPasswordButton:
                alert(message: "You password '1234'")
            default:
                break
            }
    }
        
    private func alert(message: String) {
        let alert = UIAlertController(title: nil, message: "\(message)", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        }

}
