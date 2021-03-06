//
//  ThirdViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 15.04.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        makeButton()  // для запуска
    }
// добавляем кнопку
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Назад", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector((tapAction)), for: .touchUpInside)
        view.addSubview(button) // Для отображение
    }
    
    // системное окошко Алерт
    @objc private func tapAction() {
        let alert = UIAlertController(title: "Перейти назад", message: "Вы точно хотите выйте?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Выйти", style: .default){ _ in
           // добавляем код на действия ок по выходу но только через призент в этом контролере
            //self.dismiss(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive)
        // добавляем действия
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// одна связка презент - дисмисс
// вторая пуш - поп 
