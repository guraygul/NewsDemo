//
//  Webservice.swift
//  NewsDemo
//
//  Created by Güray Gül on 29.01.2024.
//

import Foundation

class Webservice {
    func getNews(url: URL, completion: @escaping ([News]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let newsDictionary = try? JSONDecoder().decode([News].self, from: data)
                
                if let newsDictionary = newsDictionary {
                    completion(newsDictionary)
                }
            }
        }.resume()
        
    }
}
