//
//  NewCollectionViewCell.swift
//  HelloCollectionView
//
//  Created by 申潤五 on 2020/3/28.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    
    var exAction:((UIImage?)->())? = nil
    
    
    @IBOutlet weak var theImageView: UIImageView!
    
    @IBAction func theAction(_ sender: Any) {
        exAction?(theImageView.image)
    }
}
