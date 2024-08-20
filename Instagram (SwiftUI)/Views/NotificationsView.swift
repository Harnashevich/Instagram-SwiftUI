//
//  NotificationsView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 7.08.24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(0...30, id: \.self) { num in
                    if num.isMultiple(of: 2) {
                        NotificationFollowView()
                    } else {
                        NotificationLikeView()
                    }
                  
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

struct NotificationLikeView: View {
    var body: some View {
        HStack {
            // user image
            let userImageName = "user\(Int.random(in: 1...5))"
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)

            // text, date
            VStack(alignment: .leading) {
                Text("timcook liked your post.")
                Text("\(Int.random(in: 3...59)) minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }

            Spacer()

            // Post
            let imageName = "image\(Int.random(in: 1...5))"
            let image = Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44, alignment: .center)
                .padding(.trailing, 10)

            NavigationLink(
                destination: PostView(userImageName: userImageName, imageName: imageName),
                label: {
                    Spacer()
                    image
                }
            )
            .frame(width: 44, height: 44, alignment: .center)
        }
    }
}

struct NotificationFollowView: View {
    var body: some View {
        HStack {
            // user image
            Image("user\(Int.random(in: 1...5))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .clipShape(Circle())
            // text, date
            VStack(alignment: .leading) {
                Text("johnapples started following you")
                Text("\(Int.random(in: 1...59)) minutes ago")
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            // follow button
            Button(action: {
                // do nothing
            }, label: {
                Text("Follow")
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundStyle(Color.white)
                    .background(Color(.link))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            })
        }
    }
}

#Preview {
    NotificationsView()
}
