//
//  MapManager.swift
//  MemoryTracker
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import Foundation

class MapManager {
    
    var imageName = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]

    init() {
        shuffleImages()
    }
    
    func shuffleImages() {
        imageName.sort(by: { (_,_) in arc4random() < arc4random() })
    }
}
