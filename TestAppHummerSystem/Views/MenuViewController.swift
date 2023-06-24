//
//  MenuViewController.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var foodTableView: UITableView!
    @IBOutlet weak var filtersCollectionView: UICollectionView!
    
    var presenter: MenuPresentationLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // код для экрана меню
        view.backgroundColor = .white
        foodTableView.delegate = self
        foodTableView.dataSource = self
        filtersCollectionView.delegate = self
        filtersCollectionView.dataSource = self
        presenter = Presenter(dataSourse: APIDataSource())
        foodTableView.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "foodCell")
        filtersCollectionView.register(UINib(nibName: "FilterCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "filterCell")
        
        presenter?.getData()
        foodTableView.reloadData()
        filtersCollectionView.reloadData()
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 190 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.numberOfRowsInSection() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as? FoodTableViewCell else { return UITableViewCell() }
        
        if let data = presenter?.dataForCell()[indexPath.row] {
            cell.setupCell(model: data)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MenuViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter?.uniqTypesOfFoodAmount() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filterCell", for: indexPath) as? FilterCollectionViewCell else { return UICollectionViewCell() }
        let data = presenter?.uniqTypesOfFood()[indexPath.row] ?? ""
        cell.setupCell(name: data)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
}
