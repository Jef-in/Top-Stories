//
//  categoriesCell.swift
//  Top News
//
//  Created by Jefin on 18/06/20.
//  Copyright © 2020 Jefin. All rights reserved.
//

import Foundation
import UIKit

class categoriesCell: UICollectionViewCell {
    @IBOutlet var categoryNameLabel: UILabel!

    override func awakeFromNib() {
    }

    func setValues(categories: String) {
        categoryNameLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        categoryNameLabel.text = categories
    }
}
