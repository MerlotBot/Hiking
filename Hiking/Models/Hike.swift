//
//  Hike.swift
//  Hiking
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
        
            Hike(name: "Hike1", imageURL: "img", miles: 10),
            Hike(name: "Hike2", imageURL: "img", miles: 10),
            Hike(name: "Hike3", imageURL: "img", miles: 2)
        ]
    }
}
