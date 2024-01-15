//
//  MainCoordinator.swift
//  Chit Chat
//
//  Created by Neshwa on 15/01/24.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    //var childCoordinators: [Coordinator] = []
    
    var tabBarController: UITabBarController
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        let firstCoordinator = FirstCoordinator(navigationController: UINavigationController())
        let secondCoordinator = SecondCoordinator(navigationController: UINavigationController())
        
        //childCoordinators = [firstCoordinator, secondCoordinator]
        tabBarController.viewControllers = [firstCoordinator.navigationController, secondCoordinator.navigationController]
        firstCoordinator.start()
        secondCoordinator.start()
    }
}

class FirstCoordinator : Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController = ChatsViewController.instantiate()
        firstViewController.coordinator = self
        navigationController.pushViewController(firstViewController, animated: true)
    }
}

class SecondCoordinator : Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController = ProfileViewController.instantiate()
        secondViewController.coordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
}
