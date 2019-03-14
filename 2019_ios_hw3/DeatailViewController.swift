//
//  DeatailViewController.swift
//  2019_ios_hw3
//
//  Created by User11 on 2019/3/14.
//  Copyright © 2019 river. All rights reserved.
//

import UIKit

class DeatailViewController: UIViewController {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryImageView.image = UIImage(named: imageName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
