//
//  DetailViewController.swift
//  MyFavBands
//
//  Created by Karissa Sjostrom on 10/2/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var productImageView: UIImageView!
    
    //1) Comment out detailDescriptionLabel
    //@IBOutlet weak var detailDescriptionLabel: UILabel!
    //
    //initializeers
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //2) Comment out self.configureView()
            // self.configureView()
        }
    }
    
    //Errors will start going away from MasterViewController
    //3) Add didSet for productName
    var productName: String? {
        didSet {
            
        }
    }
    
    //3) Add didSet for productURL
    var productURL: NSString? {
        didSet {
            // Update the view.
            // self.configureView()
        }
    }
    
    //4) Modify  func configureView()
    func configureView() {
        // Update image if detailItem has been passed a value from MasterViewController Seque
        if let detail: AnyObject = self.detailItem {
            productImageView.image = UIImage(named:productURL! as String)
            
        }
    }
    
    //5) Modify override func viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Product URL: \(productURL)")
        print("Product Name: \(productName)")
        if productName == nil
        {
            productImageView.image = UIImage(named:"Ill be Bach.jpg")
        }
        title = productName
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

