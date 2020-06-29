//
//  newsCell.swift
//  Top News
//
//  Created by Jefin on 18/06/20.
//  Copyright © 2020 Jefin. All rights reserved.
//

import Foundation
import UIKit

class newsCell: UITableViewCell {
    @IBOutlet var newsImage: UIImageView!

    @IBOutlet var newsDescriptionLbl: UILabel!

    override func awakeFromNib() {
    }

    func setValues(article: Articles) {
        newsDescriptionLbl.text = article.title
        if let url = article.urlToImage {
            newsImage.loadImagefromUrl(urlString: url)
        }
    }
}
