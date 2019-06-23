//
//  HikeDetail.swift
//  Hiking
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import Foundation
import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            Text(hike.name)
            .font(.largeTitle)
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
    
}

#if DEBUG
struct HikeDetail_Previews : PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all()[1])
    }
}
#endif
