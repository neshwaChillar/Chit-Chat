//
//  StoryBoard.swift
//  Chit Chat
//
//  Created by Neshwa on 15/01/24.
//

import Foundation
import UIKit

protocol StoryBoard {
    static func instantiate() -> Self
}

extension StoryBoard where Self : UIViewController {
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
