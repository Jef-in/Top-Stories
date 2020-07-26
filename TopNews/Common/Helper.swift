//
//  Helper.swift
//  Top News
//
//  Created by Jefin on 17/06/20.
//  Copyright © 2020 Jefin. All rights reserved.
//

import Foundation
import UIKit

class Helper {
    static var headlineCellId: String = "headlinesCell"
    static var categoriesCellId: String = "categoriesCell"
    static var newsCellId: String = "newsCell"
    static var Categories = ["All", "Business", "Entertainment", "General", "Science", "Sports", "Technology"]

    static var headlinesAPI: String = "https://newsapi.org/v2/top-headlines?country=in&language=en&apiKey="
    static var newsAPI: String = "https://newsapi.org/v2/everything?q="
    static var APIKey: String = "4d3c0d1d011a4a9ebd55e1e02ac84df6"
}

let imageCache = NSCache<NSString, UIImage>()

// MARK: - To download the image and store in the cache

extension UIImageView {
    func loadImagefromUrl(urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }

        image = nil

        if let imageFromCache = imageCache.object(forKey: urlString as NSString) {
            image = imageFromCache
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, err in

            if let err = err {
                print("error :", err)
            }

            guard let data = data else { return }

            DispatchQueue.main.async {
                if let imageToCache = UIImage(data: data) {
                    imageCache.setObject(imageToCache, forKey: urlString as NSString)
                    self.image = imageToCache
                }
            }

        }.resume()
    }
}

extension UIViewController {
    func showAlert(title: String, msg: String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
