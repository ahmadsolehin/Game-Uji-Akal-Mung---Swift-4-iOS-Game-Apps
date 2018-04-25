//
//  RatingStorage.swift
//  Created by ahmad solehin on 9/1/17.
//  Copyright © 2017 OtakmuKuatke. All rights reserved.
//

import Foundation

class RatingStorage {
    static let shared = RatingStorage()
    
    var userScores: [UserScore] = []
    
    init() {
        userScores = loadData()
    }
    
    var fileUrl: URL {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        return url.appendingPathComponent("Rating")
    }
    
    func saveData(score: UserScore) {
        self.userScores.append(score)
        NSKeyedArchiver.archiveRootObject(userScores, toFile: fileUrl.path)
    }
    
    func loadData() -> [UserScore] {
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: fileUrl.path) as? [UserScore] {
            self.userScores = ourData
        }
        
        return userScores.sorted(by: { $0.score > $1.score })
    }
    
    func removeAll() {
        try? FileManager.default.removeItem(atPath: fileUrl.path)
    }
}
