//
//  StoriesView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 19.08.24.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0...10, id: \.self) { num in
                    StoryView(imageName: "foo")
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
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.blue)
            .clipShape(Circle())
            .padding(3)
    }
}
