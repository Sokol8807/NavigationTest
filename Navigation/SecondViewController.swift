//
//  SecondViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 14.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print (#function)
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)

    }
    
    override func loadView() {
        super.loadView()
        print (#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        print (#function)
        makeBarItem()   // не забывай добавить в метод для показа
    }
 // теперь третий еще и на втором по кнопки дальше
    private func makeBarItem(){
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction(){
        let vc = ThirdViewController()
        vc.title = "Новый"  // есть только у навигайшен контролера
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print (#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print (#function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print (#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print (#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print (#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print (#function)
    }
    deinit{
        print (#function)
    }
}
