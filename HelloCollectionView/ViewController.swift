//
//  ViewController.swift
//  HelloCollectionView
//
//  Created by 申潤五 on 2020/3/28.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    

    @IBOutlet weak var selectedImageView: UIImageView!
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

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let screenSize = UIScreen.main.bounds.size
        
        let layout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        
        let saveAreaWidth = screenSize.width - view.safeAreaInsets.left - view.safeAreaInsets.right
        layout.itemSize = CGSize(width: saveAreaWidth / 3 , height: saveAreaWidth / 3  )
        
        myCollectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    
    
    
    
    //MARK:CollectionView Data Source & Delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! NewCollectionViewCell
        cell.theImageView.image = images[indexPath.row]
        
        cell.exAction = {(image) in
//            self.selectedImageView.image = image
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let nextVC = storyBoard.instantiateViewController(withIdentifier: "myVC") as! MyViewController
            nextVC.modalPresentationStyle = .fullScreen
            nextVC.theImage = image
            self.present(nextVC, animated: false, completion: nil)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    

    @IBAction func nextPageAction(_ sender: Any) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: "myVC") as! MyViewController
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)

        
    }
}

