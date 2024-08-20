//
//  ProfileView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 8.08.24.
//

import SwiftUI

struct ProfileView: View {
    
    var columns: [GridItem] = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView()
                LazyVGrid(columns: columns) {
                    ForEach(0...90, id: \.self) { num in
                        let imageName = "image\(Int.random(in: 1...5))"
                        NavigationLink(
                            destination: PostView(userImageName: "user2", imageName: imageName)
                                .navigationBarTitle("Photo", displayMode: .inline),
                            label: {
                                Image(imageName)
                                    .resizable()
                                    .frame(width: 155, height: 155, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                            })
                    }
                }
            }
            .navigationTitle("iosacademy")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            // avatar image, counts
            HStack {
                Image("user2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .padding()
                
                VStack {
                        // posts, followers, following
                        HeaderCountButtonsView()
                    
                    // edit profile button
                    Button(action: {

                    }, label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 200, height: 44, alignment: .center)
                            .background(Color(.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
            }
            
            HStack {
                // user bio
                Text("Welcome to iOS Academy - \nthe best place to learn iOS!")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20)
                    .padding(.leading, 40)
                Spacer()
            }
        }
        .padding(.leading, 10)
    }
}

struct HeaderCountButtonsView: View {
    var body: some View {
        HStack {
            Button(action: {
                // no operations
            }, label: {
                Text("3\nPosts")
                    .foregroundStyle(Color(.label))
                    .multilineTextAlignment(.center)
            })
            .padding()
            Button(action: {
                // no operations
            }, label: {
                Text("12k\nFollowers")
                    .foregroundStyle(Color(.label))
                    .multilineTextAlignment(.center)
            })
            // .padding()
            Button(action: {
                // no operations
            }, label: {
                Text("300\nPosts")
                    .foregroundStyle(Color(.label))
                    .multilineTextAlignment(.center)
            })
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
