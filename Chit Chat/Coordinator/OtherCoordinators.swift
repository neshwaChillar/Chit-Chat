//
//  OtherCoordinators.swift
//  Chit Chat
//
//  Created by Neshwa on 15/01/24.
//

import Foundation
import UIKit

class OtherCoordinators : Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SplashViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
