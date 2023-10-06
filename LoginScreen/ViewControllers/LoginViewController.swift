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
    
    private let user = User.receiveUserData()
    
    private var login = "Ruslan"
    private var password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.isSecureTextEntry = true
        loginTF.layer.cornerRadius = 10
        passwordTF.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.userName = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? UserInformationViewController else { return }
                
                userInfoVC.user = user
            }
        }
        
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.userName = loginTF.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logOutPressButton(_ unwindSegue: UIStoryboardSegue) {
        loginTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let loginInTF = loginTF.text!.trimmingCharacters(in: .whitespaces)
        let passwordInTF = passwordTF.text!.trimmingCharacters(in: .whitespaces)
        
        if loginInTF.isEmpty || passwordInTF.isEmpty {
            alert(message: "Please fill Login and Password")
            loginTF.text = nil
            passwordTF.text = nil
        } else if loginInTF != login || passwordInTF != password {
            alert(message: "Please fill corect Login or Password")
            loginTF.text = nil
            passwordTF.text = nil
        }
        
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        
    }
        
    @IBAction func rememberLoginPass(_ sender: UIButton) {
        switch sender.tag {
            case 0:
                alert(message: "You login \(login)")
            case 1:
                alert(message: "You password \(password)")
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
