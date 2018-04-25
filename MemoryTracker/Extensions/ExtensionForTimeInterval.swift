//
//  ExtensionForTimeInterval.swift
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import UIKit

extension TimeInterval {
    
    static func toString(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        
        return String(format: "%02i:%02i", minutes, seconds)
    }
}
