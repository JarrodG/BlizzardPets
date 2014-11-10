//
//  ViewController.swift
//  Blizzard Testing
//
//  Created by Jarrod Glissmann on 10/27/14.
//  Copyright (c) 2014 Jarrod Glissmann. All rights reserved.
//



//double check code
// change collection view label
//had to instantiate newcharacter
//???
//profit
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var characterName: UITextField!
    @IBOutlet weak var realmName: UITextField!
    var newCharacter:Character?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newCharacter?.getCharacterData(realmName.text, characterName: characterName.text)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeCharacter(sender: UIButton) {
        prepareForSegue(UIStoryboardSegue(identifier: "seg", source: self, destination: PetViewController()), sender: sender)
        performSegueWithIdentifier("seg", sender: sender)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as PetViewController
        destination.realmNameStr = realmName.text
        destination.characterNameStr = characterName.text
        
        
        
        
    }

    override func performSegueWithIdentifier(identifier: String, sender: AnyObject?) {
        println("asdf")
        
    }
    
}

