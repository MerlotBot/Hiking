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
        
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "tam", miles: 5)
        ]
    }
}
