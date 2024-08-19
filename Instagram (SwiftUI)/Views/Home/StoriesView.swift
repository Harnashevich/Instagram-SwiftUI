//
//  StoriesView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 19.08.24.
//

import SwiftUI

struct StoriesView: View {
    let data = (1...5).map { "user\($0)" }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id: \.self) { imageName in
                    StoryView(imageName: imageName)
                }
            }
        }
    }
}

struct StoryView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.blue)
            .clipShape(Circle())
            .padding(3)
    }
}
