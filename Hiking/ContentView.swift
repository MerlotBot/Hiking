//
//  ContentView.swift
//  Hiking
//
//  Created by Antonakakis Nikolaos on 23.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(hikes) { hike in
                HikeCell(hike: hike)
                }
                .navigationBarTitle(Text("Hiking"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct HikeCell : View {
    
    let hike: Hike
    
    var body: some View {
        return NavigationButton(destination: HikeDetail(hike: hike)) {
            HStack {
                Image(hike.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text(String(format: "%g", hike.miles))
                }
            }
        }
    }
}
