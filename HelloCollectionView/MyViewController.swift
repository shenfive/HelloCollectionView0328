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
    var theImage:UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.mainImage.image = theImage
    }
    
    
    @IBAction func endUse(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
