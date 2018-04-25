//
//  RatingCell.swift
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import UIKit

class RatingCell: UITableViewCell {

    @IBOutlet weak var trophy: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var score: UILabel!
    
    func generate(with user: UserScore, image: UIImage?) {
        trophy.image = image
        userName.text = user.username
        score.text = "\(user.score)"
        time.text = user.date.timeSinceDate()
    }

}
