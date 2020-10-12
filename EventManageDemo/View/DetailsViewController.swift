//
//  DetailsViewController.swift
//  EventManageDemo
//
//  Created by mac on 12/10/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var profileView1: UIView!
    @IBOutlet weak var profileView2: UIView!
    @IBOutlet weak var profileView3: UIView!
    
    @IBOutlet weak var profileImageView1: UIImageView!
    @IBOutlet weak var profileImageView2: UIImageView!
    @IBOutlet weak var profileImageView3: UIImageView!
    
    @IBOutlet weak var timerButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView1.layer.cornerRadius = profileImageView1.frame.height/2
        profileImageView2.layer.cornerRadius = profileImageView2.frame.height/2
        profileImageView3.layer.cornerRadius = profileImageView3.frame.height/2
        
        profileView1.layer.cornerRadius = profileView1.frame.height/2
        profileView2.layer.cornerRadius = profileView2.frame.height/2
        profileView3.layer.cornerRadius = profileView3.frame.height/2
        
        timerButton.layer.cornerRadius = 10
    }
    
    
    
}
