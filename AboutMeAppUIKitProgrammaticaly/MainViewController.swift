//
//  MainViewController.swift
//  AboutMeAppUIKitProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 17.02.2023.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTabBar()
        
        
    }
    
    private func generateTabBar() {
        
        viewControllers = [
            generateVC(
                viewController: AboutMeController(),
                title: "About Me",
                image: UIImage(systemName: "house.fill")
            ),
            generateVC(
                viewController: SkilsController(),
                title: "Skils",
                image: UIImage(systemName: "person.fill")
            ),
            generateVC(
                viewController: HobbyController(),
                title: "Hobby",
                image: UIImage(systemName: "slider.horizontal.3")
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }

}
