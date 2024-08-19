//
//  ExpolreView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 7.08.24.
//

import SwiftUI

struct ExpolreView: View {
    @State var text = ""
    
    var imageNames = (1...5).map { "image\($0)" }
     
    var columns: [GridItem] = [
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))
    ]
    
    var body: some View {
        NavigationStack {
                VStack {
                    TextField("Search...", text: $text)
                        .padding(10)
                        .background(Color(.secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding()
                    
                    ScrollView {
                        LazyVGrid(columns: columns, content: {
                            ForEach(0...20, id: \.self) { num in
                                let name = imageNames.randomElement() ?? "image1"
                                NavigationLink {
                                    PostView(userImageName: "user1", imageName: name)
                                } label: {
                                    Image(name)
                                        .resizable()
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundStyle(Color.red)
                                }
                            }
                        })
                    }
                }
            .navigationTitle("Explore")
        }
    }
}

#Preview {
    ExpolreView()
}
