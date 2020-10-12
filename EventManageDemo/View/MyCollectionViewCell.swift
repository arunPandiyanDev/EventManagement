//
//  MyCollectionViewCell.swift
//  EventManageDemo
//
//  Created by mac on 09/10/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var roundedview: UIView!
    @IBOutlet weak var bottView: UIView!
    @IBOutlet weak var topView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        roundedview.layer.cornerRadius = 20
    }

}
