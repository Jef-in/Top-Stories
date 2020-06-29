//
//  headlineCell.swift
//  Top News
//
//  Created by Jefin on 17/06/20.
//  Copyright © 2020 Jefin. All rights reserved.
//

import Foundation
import UIKit

class headlineCell: UICollectionViewCell {
    @IBOutlet var headlineImage: UIImageView!

    @IBOutlet var headlineLabel: UILabel!

    override func awakeFromNib() {
    }

    func setValues(article: Articles) {
        headlineLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        headlineLabel.text = article.title
        if let url = article.urlToImage {
            headlineImage.loadImagefromUrl(urlString: url)
        }
    }
}
