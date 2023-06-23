//
//  ViewController.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 22.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//class UserViewController: UIViewController, UserView {
//    var presenter: UserPresenter!
//
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var ageLabel: UILabel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        presenter = UserPresenter(user: User(name: "John Doe", age: 30), view: self)
//        updateUserInfo()
//    }
//
//    func showUserName(_ name: String) {
//        nameLabel.text = name
//    }
//
//    func showUserAge(_ age: Int) {
//        ageLabel.text = "\(age)"
//    }
//
//    @IBAction func updateButtonTapped(_ sender: UIButton) {
//        presenter.updateUser(name: "Jane Smith", age: 25)
//    }
//
//    private func updateUserInfo() {
//        presenter.updateUser(name: presenter.user.name, age: presenter.user.age)
//    }
//}
