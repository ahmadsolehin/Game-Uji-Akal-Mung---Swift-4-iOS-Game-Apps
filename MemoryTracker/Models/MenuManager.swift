//
//  MenuManager.swift
//  MemoryTracker
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//
import Foundation

class MenuMeneger {
    
    let soundManager: SoundManager
    
    enum MenuState: String {
        case level = "levelIndex"
    }

    init() {
        soundManager = SoundManager()
        
        // In first launch app value will be nil
        if UserDefaults.standard.value(forKey: MenuState.level.rawValue) as? Int == nil {
            UserDefaults.standard.set(0, forKey: MenuState.level.rawValue)
        }
    }
    
    
    // Work with user defaults for getting and setting level index
    var levelIndex: Int {
        get {
            return  UserDefaults.standard.value(forKey: MenuState.level.rawValue) as? Int ?? 0
        }
        set {
            UserDefaults.standard.set(newValue, forKey: MenuState.level.rawValue)
        }
    }
    
   
    
}
