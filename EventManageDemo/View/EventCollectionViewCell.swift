//
//  EventCollectionViewCell.swift
//  EventManageDemo
//
//  Created by mac on 08/10/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
          super.layoutSubviews()
        self.contentView.layer.cornerRadius = 15
      }
}
