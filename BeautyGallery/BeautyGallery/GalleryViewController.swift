//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by Lyman on 4/3/15.
//  Copyright (c) 2015 Lyman. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imageName: String?
    var beautyName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            navigationItem.title = beautyName
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊app吧，就在Github上！https://github.com/lymanlai/swift-ios8-app-practice/BeautyGallery")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}

