//
//  ViewController.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 22.06.2023.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarController = UITabBarController()
        
        let menuViewController = MenuViewController()
        let contactsViewController = ContactsViewController()
        let profileViewController = ProfileViewController()
        let cartViewController = CartViewController()
        
        menuViewController.tabBarItem = UITabBarItem(title: "Меню", image: UIImage(systemName: "list.dash"), tag: 0)
        contactsViewController.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 2)
        cartViewController.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), tag: 3)
        
        let viewControllers = [menuViewController, contactsViewController, profileViewController, cartViewController]
        tabBarController.viewControllers = viewControllers.map { UINavigationController(rootViewController: $0) }
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.window?.rootViewController = tabBarController
        }
    }
}

class MenuViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ваш код для экрана меню
        view.backgroundColor = .white
        title = "Меню"
    }
}

class ContactsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ваш код для экрана контактов
        view.backgroundColor = .white
        title = "Контакты"
    }
}

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ваш код для экрана профиля
        view.backgroundColor = .white
        title = "Профиль"
    }
}

class CartViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ваш код для экрана корзины
        view.backgroundColor = .white
        title = "Корзина"
    }
}

