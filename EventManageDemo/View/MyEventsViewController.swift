//
//  MyEventsViewController.swift
//  EventManageDemo
//
//  Created by mac on 11/10/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class MyEventsViewController: UIViewController {
    
    
    @IBOutlet weak var noView: UIView!
    @IBOutlet weak var yesView: UIView!
    @IBOutlet weak var mayBeView: UIView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var eventImageView: UIImageView!
    
    //Initialize
    @IBOutlet weak var labelDetails:UILabel!
    @IBOutlet weak var labelConversations:UILabel!
    @IBOutlet weak var viewDetails:UIView!
    @IBOutlet weak var viewConversations:UIView!
    
    @IBOutlet weak var masterView: UIView!
    
    lazy var detailsViewController: DetailsViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController{
            return viewController
        }else{
            return DetailsViewController()
        }
    }()
    lazy var conversationsViewController: ConversationsViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "ConversationsViewController") as? ConversationsViewController{
            return viewController
        }else{
            return ConversationsViewController()
        }
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noView.layer.cornerRadius = 20
        yesView.layer.cornerRadius = 20
        mayBeView.layer.cornerRadius = 20
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        eventImageView.layer.cornerRadius = 20
        add(asChildViewController: self.detailsViewController, masterView: self.masterView)
    }
    
    //MARK: - Methods
    private func performanceUIUpdate(tag:Int){
        if tag == 0 {
            self.labelDetails.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
            self.viewDetails.backgroundColor = UIColor(red: 0.45, green: 0.95, blue: 0.93, alpha: 1.00)
            self.labelConversations.textColor = UIColor(red: 0.69, green: 0.69, blue: 0.69, alpha: 1.00)
            self.viewDetails.isHidden = false
            self.viewConversations.isHidden = true
            remove(asChildViewController: conversationsViewController)
            add(asChildViewController: self.detailsViewController, masterView: self.masterView)
        }else{
            self.labelConversations.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
            self.viewConversations.backgroundColor = UIColor(red: 0.45, green: 0.95, blue: 0.93, alpha: 1.00)
            self.labelDetails.textColor = UIColor(red: 0.69, green: 0.69, blue: 0.69, alpha: 1.00)
            self.viewDetails.isHidden = true
            self.viewConversations.isHidden = false
            remove(asChildViewController: detailsViewController)
            add(asChildViewController: self.conversationsViewController, masterView: self.masterView)
        }
    }
    //MARK: - Button Action
    @IBAction func performanceButtonAction(_ sender:UIButton){
        self.performanceUIUpdate(tag: sender.tag)
    }
    
    
}


