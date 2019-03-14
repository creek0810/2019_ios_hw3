//
//  pic_gallery.swift
//  2019_ios_hw3
//
//  Created by User11 on 2019/3/14.
//  Copyright © 2019 river. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class pic_gallery: UICollectionViewController {

    var picName: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let frameWidth = collectionView.frame.width
        let padding: CGFloat = 2.0
        let itemWidth = (frameWidth - padding) / 3.0
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        layout.minimumLineSpacing = padding
        // build picName
        for i in 1...10{
            for j in 1...9{
                picName.append(String(i) + String("_") + String(j) + String(".jpg"))
            }
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 10
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 9
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Photo Cell", for: indexPath) 
    
        // Configure the cell
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        let num = indexPath.section * 9 + indexPath.row
        imageView.image = UIImage(named: picName[num])
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let name = String(indexPath.section + 1) + String("_") + String(indexPath.row + 1) + ".jpg"
        print(name)
        self.performSegue(withIdentifier: "Detail", sender: name)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = sender as! String
        let controller = segue.destination as! DeatailViewController
        controller.imageName = name
    }
}
