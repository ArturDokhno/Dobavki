//
//  MainViewController.swift
//  Dobavki
//
//  Created by Артур Дохно on 28.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureNavBarUI()
    }
    
    // MARK: - Helpers
    
    private func configureUI() {
        
        view.backgroundColor = .white
    }
    
    private func configureNavBarUI() {
        
        // Добавление логотипа в центр NavigationBar
        let imageView = UIImageView(image: UIImage(named: "logoDobavki"))
        imageView.contentMode = .scaleAspectFill
        imageView.setDimensions(width: 32, height: 32)
        navigationItem.titleView = imageView
        
        // Добавление кнопки вызова в всплывающим окне
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "phone"),
            style: .done,
            target: self,
            action: #selector(callAlertController))
        
    }
    
    
    // MARK: - AlertController
    
    // Alert с двумя кнопками "Вызова" и "Отмены"
    @objc private func callAlertController() {
        
        let alertController = UIAlertController(
            title: "Нужна помощь?",
            message: "Позвоните нам и наш консультант поможет вам.",
            preferredStyle: .actionSheet)
        
        let callPhoneAction = UIAlertAction(title: "+79964461791", style: .default)
        alertController.addAction(callPhoneAction)
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true)
        
    }
    
}
