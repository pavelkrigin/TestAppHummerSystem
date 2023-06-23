//
//  APIDataSource.swift
//  TestAppHummerSystem
//
//  Created by Pavel Krigin on 23.06.2023.
//

import Foundation

class APIDataSource {
    
    // MARK: - Properties

    let urlString = "https://my-json-server.typicode.com/Spote777/PizzaResources/data"
    
    // MARK: - Method
    
    func request(completion: @escaping (Result<Data, Error>)-> Void) {
        let url = URL(string: urlString)
        let session = URLSession.shared
        session.dataTask(with: url!) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print("Some error")
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                completion(.success(data))
            }
        }.resume()
    }
}
