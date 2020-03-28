//
//  ViewController.swift
//  HelloCollectionView
//
//  Created by 申潤五 on 2020/3/28.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    

    @IBOutlet weak var myCollectionView: UICollectionView!
    var images:[UIImage?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [
            UIImage.init(named: "image1"),
            UIImage.init(named: "image2"),
            UIImage.init(named: "image3"),
            UIImage.init(named: "image4"),
            UIImage.init(named: "image5"),
            UIImage.init(named: "image6"),
        ]
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        
    }

    //MARK:CollectionView Data Source & Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        cell.backgroundColor = UIColor.red
        return cell
    }

}

