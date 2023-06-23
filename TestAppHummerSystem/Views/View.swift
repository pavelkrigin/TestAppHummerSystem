//
//  View.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation

protocol UserView: class {
    func showUserName(_ name: String)
    func showUserAge(_ age: Int)
}
