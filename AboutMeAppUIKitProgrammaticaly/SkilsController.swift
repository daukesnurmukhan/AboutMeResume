//
//  SkilsController.swift
//  AboutMeAppUIKitProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 17.02.2023.
//

import UIKit

class SkilsController: UITabBarController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "I'm Spider-Man!"
        label.numberOfLines = 0
        label.textColor = UIColor.red
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.shadowColor = UIColor.purple
        label.shadowOffset = CGSize(width: 2, height: 2)
        //label.center = view.center
        return label
    }()
    
    let swith: UISwitch = {
        let swith = UISwitch()
        swith.frame = CGRect.zero
        swith.tintColor = .black
        swith.thumbTintColor = .green
        swith.onTintColor = .blue
        return swith
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = .clear
        tabBar.shadowImage = UIImage()
        
        navigationItem.title = "Skils"
        
        tabBarItem.title = "Skils"
        tabBarItem.image = UIImage(systemName: "person.fill")
        
        SetUI()

    }
    
    func SetUI() {
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        
        view.addSubview(swith)
        swith.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        swith.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: 30).isActive = true
        swith.translatesAutoresizingMaskIntoConstraints = false
        swith.addTarget(self, action: #selector(isOn(target:)), for: .touchUpInside)
    }
    
    @objc func isOn(target: UISwitch) {
        if swith.isOn {
            label.isHidden = false
        } else {
            label.isHidden = true
        }
    }

}
