//
//  CardView.swift
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import UIKit

class CardView: UIImageView {
    let cardBack = #imageLiteral(resourceName: "card")
    var cardFace: UIImage?
    
    // Makes card back visible
    func setCardBack() {
        setImageAttributes(mode:  .scaleToFill, backColor: UIColor.white, userInteraction: true)
        image = cardBack
    }
    
    // Makes card face visible
    func setCardFace() {
        setImageAttributes(mode:  .scaleAspectFit, backColor: UIColor.clear, userInteraction: true)
        image = cardFace
    }
    
    // Sets attributes for image
    func setImageAttributes(mode: UIViewContentMode, backColor: UIColor, userInteraction: Bool) {
        isUserInteractionEnabled = userInteraction
        backgroundColor = backColor
        contentMode = mode
    }
}
