//
//  NewsDetailViewController.swift
//  Top News
//
//  Created by Jefin on 18/06/20.
//  Copyright © 2020 Jefin. All rights reserved.
//

import Foundation
import UIKit

class NewsDetailViewController: UIViewController {
    @IBOutlet var TitleLabel: UILabel!

    @IBOutlet var DescriptionLabel: UILabel!

    @IBOutlet var newsImage: UIImageView!

    @IBOutlet var newsContentTextView: UITextView!

    var article: Articles!

    override func viewDidLoad() {
        initialSetup()
    }

    func initialSetup() {
        TitleLabel.text = article.title?.uppercased()
        TitleLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        DescriptionLabel.text = article.description
        newsContentTextView.text = article.content
        if let url = article.urlToImage {
            newsImage.loadImagefromUrl(urlString: url)
        }
    }
}
