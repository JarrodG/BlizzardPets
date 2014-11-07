//
//  ViewController.swift
//  Blizzard Testing
//
//  Created by Jarrod Glissmann on 10/27/14.
//  Copyright (c) 2014 Jarrod Glissmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var characterName: UITextField!
    @IBOutlet weak var realmName: UITextField!
    var wowUrl:NSURL?
    var data:NSData?
    var characterDict:NSDictionary = [:]
    var newCharacter:Character
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeCharacter(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as PetViewController
        
        
        destination.characterDict = 
        var petDictionary:[String:Character] = [:]
        
        
        
        
    }
    
}

