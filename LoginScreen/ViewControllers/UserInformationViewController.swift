//
//  UserInformationViewController.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 06.10.2023.
//

import UIKit

class UserInformationViewController: UIViewController {

    
    @IBOutlet weak var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!

    @IBOutlet weak var biogrhy: UITextView!
    
    
    
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named:user.userInformation.pictue)
        //title = user.userInformation.fullName
        firstNameLabel.text = user.userInformation.firsName
        secondNameLabel.text = user.userInformation.secondName
        biogrhy.text = user.userInformation.biography
        
    }
    

}
