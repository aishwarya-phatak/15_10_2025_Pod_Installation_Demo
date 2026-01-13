//
//  ViewController.swift
//  15_10_2025_Pod_Installation_Demo
//
//  Created by Vishal Jagtap on 13/01/26.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       extractImageAndBind()
    }
    
    func extractImageAndBind(){
        let url = URL(string: "https://cdn.dummyjson.com/products/images/smartphones/Oppo%20A57/thumbnail.png")
        imageView1.sd_setImage(with: url,
                               placeholderImage: UIImage(named: "test_image_2"))
    }
}
