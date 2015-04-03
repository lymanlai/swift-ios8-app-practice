//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by Lyman on 4/3/15.
//  Copyright (c) 2015 Lyman. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    var imageName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imageName != nil {
            beautyImage.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

