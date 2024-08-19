//
//  HomeFeedView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 7.08.24.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    
                    ForEach(0...30, id: \.self) { num in
                        PostView()
                            .padding(.bottom, 20)
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack {
            PostHeaderView()
            .padding()
            
            // Image
            Image("foo")
                .frame(width: 400, height: 400, alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            HStack {
                // like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundStyle(Color.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                Text("32 Likes")
                    .font(.system(size: 20))
                    .foregroundStyle(Color(.link))
                Spacer()
            }
            .padding()
            .padding(.top, -20)
            
            // Caption
            Text("It's just caption text #newYear #trending #swiftUI and many other caprions")
                .font(.headline)
                .padding()
                .padding(.top, -20)
            
            // Comments
            
            HStack {
                // Date
                Text("1 hour ago")
                    .foregroundStyle(Color(.secondaryLabel))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 12)
        }
    }
}

struct PostHeaderView: View {
    var body: some View {
        HStack {
            // user profile picture and username
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundStyle(Color.blue)
            
            Text("kanyeWest")
                .foregroundStyle(Color.blue)
                .bold()
            
            Spacer()
        }
    }
}

struct PostActionButtonsView: View {
    var body: some View {
        HStack {
            // action buttins: like, comment, share
            Button(action: {
                // Like
            }, label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(Color(.label))
            })
            .padding(.trailing, 10)
            
            Button(action: {
                // Message
            }, label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(Color(.label))
            })
            .padding(.trailing, 10)
            
            Button(action: {
                // Share
            }, label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(Color(.label))
            })
            .padding(.trailing, 10)
            
            Spacer()
        }
        
        .padding()
    }
}

#Preview {
    HomeFeedView()
}
