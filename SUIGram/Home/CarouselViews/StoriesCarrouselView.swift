//
//  StoriesCarrouselView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct StoriesCarrouselView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ZStack {
          StoryUserView(user: User(name: "user",
                                   avatar: "avatar",
                                   hasStory: false))
          
          Button(action: {}) {
            Image(systemName: "plus.circle.fill")
              .resizable()
              .frame(width: 25, height: 25, alignment: .center)
              .foregroundColor(Color.blue)
              .background(Color.white)
              .clipShape(Circle())
              .overlay(
                Circle()
                  .stroke(Color.white, lineWidth: 1.5)
              )
          }.offset(x: 20, y: 10)
        }
        ForEach((1...10), id: \.self) { row in
          StoryUserView(user: User(name: "user \(row)",
            avatar: "avatar", hasStory: true))
        }
      }
    }
  }
}

struct StoryUserView: View {
  var user: User
  var body: some View {
    let colors = Gradient(colors: [.red, .orange, .purple, .red])
    let conic = AngularGradient(gradient: colors, center: .bottomLeading)
    return VStack {
      Image(user.avatar)
        .resizable()
        .frame(width: 70, height: 70)
        .clipShape(Circle())
        .padding(5)
        .overlay(
            Circle()
              .strokeBorder(conic, lineWidth: user.hasStory ? 3 : 0)
        )
        
      Text(user.name).font(.body)
    }
  }
}

struct StoriesCarrouselView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      StoryUserView(user: User(name: "Test User",
                               avatar: "avatar", hasStory: true))      .previewLayout(.sizeThatFits)
      StoryUserView(user: User(name: "Test User",
                               avatar: "avatar", hasStory: false))      .previewLayout(.sizeThatFits)
      StoriesCarrouselView()
    }
    
  }
}
