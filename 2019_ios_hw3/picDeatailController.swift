//
//  DeatailViewController.swift
//  2019_ios_hw3
//
//  Created by User11 on 2019/3/14.
//  Copyright © 2019 river. All rights reserved.
//

import UIKit

class picDeatailController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = UIImage(named: imageName)
    }

}
