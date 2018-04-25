//
//  ViewController.swift
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    
    enum Level: Int {
        case easy = 0
        case normal = 1
        case hard = 2
    }
    
    @IBOutlet weak var levelControl: UISegmentedControl!
    @IBOutlet weak var soundButton: UIButton!
    
    var menuManager: MenuMeneger!
    
    @IBAction func changeSoundState(_ sender: UIButton) {
    }
    
    @IBAction func levelChanged(_ sender: UISegmentedControl) {
        menuManager.levelIndex = sender.selectedSegmentIndex
    }
    
    func timeLimit(with level: Level) -> TimeInterval {
        switch level {
        case .easy: return 90
        case .normal: return 60
        case .hard: return 45
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuManager = MenuMeneger()
        
        set(levelIndex: menuManager.levelIndex)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GameControllerSegue", let _ = segue.destination as? GameController {
            let level = Level(rawValue: levelControl.selectedSegmentIndex) ?? Level.easy
            GameLogic.shared.setTimeLimit(time: timeLimit(with: level))
        }
    }
    
    func set(soundState: Bool) {
        if soundState {
            soundButton.setImage(#imageLiteral(resourceName: "speakerOn"), for: .normal)
            
        } else {
            soundButton.setImage(#imageLiteral(resourceName: "speakerOff"), for: .normal)
        }
    }
    
    func set(levelIndex: Int) {
        levelControl.selectedSegmentIndex = levelIndex
    }
}

