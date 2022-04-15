//
//  MainTabBarViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 14.04.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
   let firstVC = ViewController ()
   let secondVC = SecondViewController()
   
//    let newVC = ThirdViewController()   необходимо добавить в массив viewControllers = [firstVC, navController]


    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    
    }
   
    private func setupControllers (){
        
        firstVC.tabBarItem.title = "Первый"
        firstVC.tabBarItem.image = UIImage(systemName: "bolt.fill")
        
        // создаем навигайшен контролер
        
        let navController = UINavigationController(rootViewController: secondVC)
        secondVC.tabBarItem.title = "Второй"
        secondVC.tabBarItem.image = UIImage(systemName: "heart.fill")
        secondVC.navigationItem.title = "Второй VC" // отвечает за полоску сверху 
        
        
        // let newVC = ThirdViewController()  так же можно тут инициализировать
        //newVC.tabBarItem.title = "Третий"
        
        viewControllers = [firstVC, navController]
    }

}
