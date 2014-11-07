//
//  PetViewController.swift
//  Blizzard Testing
//
//  Created by Jarrod Glissmann on 11/3/14.
//  Copyright (c) 2014 Jarrod Glissmann. All rights reserved.
//

import UIKit

class PetViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var characterDict:[String: Character] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as PetCell
        cell.petName.text = ""
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return characterDict.count
        
    }

}

class PetCell: UICollectionViewCell {
    
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var petName: UILabel!
    
}
