//
//  ProfileCoordinator.swift
//  Chit Chat
//
//  Created by Neshwa on 15/01/24.
//

import Foundation
import UIKit

class ProfileCoordinator : Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        let secondViewController = ProfileViewController.instantiate()
        secondViewController.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
}


