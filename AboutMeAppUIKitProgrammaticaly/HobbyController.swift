//
//  HobbyController.swift
//  AboutMeAppUIKitProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 17.02.2023.
//

import UIKit

class HobbyController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = .clear
        tabBar.shadowImage = UIImage()
        
        navigationItem.title = "Hobby"
        
        tabBarItem.title = "Hobby"
        tabBarItem.image = UIImage(systemName: "slider.horizontal.3")
        
    }

}
