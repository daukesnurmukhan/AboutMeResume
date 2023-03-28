//
//  ViewController.swift
//  AboutMeAppUIKitProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 17.02.2023.
//

import UIKit

class AboutMeController: UITabBarController {
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("More details", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = .clear
        tabBar.shadowImage = UIImage()
        
        navigationItem.title = "About Me"

        tabBarItem.title = "About Me"
        tabBarItem.image = UIImage(systemName: "house.fill")
        
        setUI()
    }
    
    func setUI() {
        view.addSubview(button)
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        button.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: 30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(displayMoreDetails), for: .touchUpInside)
    }
    
    @objc func displayMoreDetails(param: Any) {
        let moreDetailsVC = MoreDetailsController()
        self.navigationController?.pushViewController(moreDetailsVC, animated: true)
    }

}

