//
//  ProfileViewController.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 4/20/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reputationLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    fileprivate let stateController = StateController()
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        let user = stateController.user
        profilePictureImageView.image = UIImage(named: user.profileImage)
        nameLabel.text = user.name
        reputationLabel.text = "\(user.reputation)"
        aboutMeLabel.text = user.aboutMe
    }
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let navigationController = segue.destination as? UINavigationController,
                let destination = navigationController.viewControllers.first as? EditProfileViewController {
                destination.stateController = stateController
            }
        }
    
}
