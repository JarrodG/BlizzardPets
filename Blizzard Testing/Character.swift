//
//  Character.swift
//  Blizzard Testing
//
//  Created by Jarrod Glissmann on 11/6/14.
//  Copyright (c) 2014 Jarrod Glissmann. All rights reserved.
//

import Foundation

class Character {
    var isFavorite = 0
    var canBattle = 0
    var creatureName = ""
    var isFirstAbilitySlotSelected = 0
    var isSecondAbilitySlotSelected = 0
    var isThirdAbilitySoltSelected = 0
    var name = ""
    var quality = 0
    var breedId = 0
    var health = 0
    var level = 0
    var power = 0
    var speed = 0
    
    var wowUrl:NSURL?
    var data:NSData?
    var characterDict:NSDictionary = [:]
    
    
    func getCharacterData(realmName: String, characterName: String) {
        wowUrl = NSURL(string: "https://us.api.battle.net/wow/character/\(realmName)/\(characterName)?fields=pets&locale=en_US&apikey=unmcscwt4pc3q2wzbub2vjrsa6cw4pxg")
        var error:NSError?
        data = NSData(contentsOfURL: wowUrl!, options: nil, error: &error)
        
        if error == nil {
            
            characterDict = NSJSONSerialization.JSONObjectWithData(data!, options: nil, error: &error) as NSDictionary
            println(characterDict)
            if error != nil {
                println(error?.description)
            } else {
                if let playerInfo = characterDict["pets"] as? NSDictionary {
                    if let petCollection = playerInfo["collected"] as? NSArray {
                        for pet in petCollection {
                            if let creatureName = pet["creatureName"] as? String {
                                println(creatureName)
                            }
                            
                        }
                    }
                    
                }
            }
        } else {
            println(error?.description)
        }
    }
    
}
