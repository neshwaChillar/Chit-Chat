//
//  MainCoordinator.swift
//  Chit Chat
//
//  Created by Neshwa on 15/01/24.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    var childCoordinators: [Coordinator] = []

    var tabBarController: UITabBarController
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        
        let firstCoordinator = ChatCoordinator(navigationController: UINavigationController())
        let secondCoordinator = ProfileCoordinator(navigationController: UINavigationController())
        
        childCoordinators = [firstCoordinator, secondCoordinator]
        tabBarController.viewControllers = [firstCoordinator.navigationController, secondCoordinator.navigationController]
        let chatIcon = UIImage(systemName: "message")
        firstCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Chat", image: chatIcon, selectedImage: UIImage(systemName: "message.fill"))
        let profileIcon = UIImage(systemName: "person.circle")
        secondCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Profile", image: profileIcon, selectedImage: UIImage(systemName: "person.circle.fill"))
        
        firstCoordinator.start()
        secondCoordinator.start()
        
    }
}


