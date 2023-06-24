//
//  TabBarController.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 24.06.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menuViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MenuViewController")
        let contactsViewController = ContactsViewController()
        let profileViewController = ProfileViewController()
        let cartViewController = CartViewController()
        
        menuViewController.tabBarItem = UITabBarItem(title: "Меню", image: UIImage(systemName: "list.dash"), tag: 0)
        contactsViewController.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 2)
        cartViewController.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "cart"), tag: 3)
        
        let viewControllers = [menuViewController, contactsViewController, profileViewController, cartViewController]
        self.viewControllers = viewControllers.map { UINavigationController(rootViewController: $0) }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
