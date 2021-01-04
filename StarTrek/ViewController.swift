//
//  ViewController.swift
//  StarTrek
//
//  Created by Khalil Saboor on 12/25/20.
//

import UIKit

class ViewController: UIViewController {
 

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapButton() {
         // Create and present tab bar controller
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: ListViewController())
        let vc2 = UINavigationController(rootViewController: PinkViewController())
        let vc3 = UINavigationController(rootViewController: CollectionsViewController())
        
        tabBarVC.setViewControllers([vc1, vc2, vc3], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "gear", "star"]
        
        for item in 0..<items.count {
            items[item].image = UIImage(systemName: images[item])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    

}
