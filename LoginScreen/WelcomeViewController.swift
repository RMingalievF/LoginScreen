//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 06.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

   
    @IBOutlet weak var userNameTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    
    @IBAction func logOutPressButton() {
        dismiss(animated: true)
    }
    

}
