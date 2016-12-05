//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Paul on 04.01.16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    let WIDTH: CGFloat = 240.0
    let HEIGHT: CGFloat = 397.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<5 {
            let img = UIImage(named: "\(i)")
            let imgView = UIImageView(image: img)
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(i)), 270, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
    }

    


}

