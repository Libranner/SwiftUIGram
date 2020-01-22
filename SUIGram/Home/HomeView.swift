//
//  MainView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct User {
  var name: String
  var avatar: String
  var hasStory: Bool = false
}

let user = User(name: "Leo Santos", avatar: "avatar")

struct HomeView: View {
  var body: some View {
    NavigationView {
      ScrollView(showsIndicators: false) {
        VStack {
          StoriesCarrouselView().padding([.leading, .trailing, .top], 10)
          Divider()
          //TODO: Change this for a List of post objects
          ForEach((1...10), id: \.self) { _ in
            PostView()
          }
          Spacer()
        }
      }
      .navigationBarItems(leading: Button(action: {}) {
        Image(systemName: "camera")
        }, trailing: HStack(spacing: 20) {
          Button(action: {}) {
            Image(systemName: "tv")
          }
          Button(action: {}) {
            Image(systemName: "paperplane")
          }
      })
        .navigationBarTitle(Text("Instagram"), displayMode: .inline)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HomeView().previewDevice("iPhone SE")
      HomeView().previewDevice("iPhone X")
        .environment(\.colorScheme, .dark)
    }
  }
}
