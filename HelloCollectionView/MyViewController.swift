//
//  MyViewController.swift
//  HelloCollectionView
//
//  Created by 申潤五 on 2020/3/28.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    
    @IBAction func endUse(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
