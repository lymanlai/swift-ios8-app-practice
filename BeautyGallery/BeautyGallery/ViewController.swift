//
//  ViewController.swift
//  BeautyGallery
//
//  Created by Lyman on 4/3/15.
//  Copyright (c) 2015 Lyman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            
            var imageName: String?
            var beautyName = beauties[index]
            switch index {
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"
            default:
                imageName = nil
            }
            
            var vc = segue.destinationViewController as GalleryViewController
            vc.imageName = imageName
            vc.beautyName = beautyName
        }
    }
    
    // Unwind Segue
    @IBAction func close(segue: UIStoryboardSegue) {
        //print("closed")
    }
}

