//
//  AppView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 03/11/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      HomeView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
      }
      ProfileView()
        .tabItem {
          Image(systemName: "person.fill")
          Text("Profile")
      }
    }
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
