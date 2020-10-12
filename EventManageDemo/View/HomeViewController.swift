//
//  HomeViewController.swift
//  EventManageDemo
//
//  Created by mac on 08/10/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var eventCollectionView: UICollectionView!
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var profileview1: UIView!
    @IBOutlet weak var profileView2: UIView!
    @IBOutlet weak var profileImageView1: UIImageView!
    @IBOutlet weak var profileImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventCollectionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCollectionViewCell")
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView1.layer.cornerRadius = profileImageView1.frame.height/2
        profileImageView2.layer.cornerRadius = profileImageView2.frame.height/2
        profileview1.layer.cornerRadius = profileview1.frame.height/2
              profileView2.layer.cornerRadius = profileView2.frame.height/2
        view1.layer.cornerRadius = 20
        view2.layer.cornerRadius = 20
        view3.layer.cornerRadius = 20
        eventImageView.layer.cornerRadius = 10
        
    }
  

}

extension HomeViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView,
                                layout collectionViewLayout: UICollectionViewLayout,
                                sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(collectionView.bounds.width)
        let width = collectionView.bounds.width
        let height = width/100 * 60
        return CGSize(width: collectionView.bounds.width - 80, height: height)
    }

    
}
