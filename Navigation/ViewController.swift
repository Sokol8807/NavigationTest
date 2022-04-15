//
//  ViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        makeButton()  // вызываем кнопку в viewDidLoad
        
    }
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Нажми", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)  // добавляет кнопку на экран
    }
    
    @objc private func tapAction(){
       let vc = ThirdViewController()// Добавляем действия со ссылкой на третий экран
       present(vc, animated: true)  // метод вызывает модальным переходом ThirdViewController
    }
}

