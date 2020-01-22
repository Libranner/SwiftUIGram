//
//  PostHeaderView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct PostHeaderView: View {
  var body: some View {
    HStack {
      Image("avatar")
        .resizable()
        .frame(width: 50, height: 50)
        .clipShape(Circle())
      VStack(alignment: .leading) {
        Text("basketZarahoza").font(.body)
        Text("Pabellón Príncipe Felipe").font(.caption)
      }
      Spacer()
      Button(action: {}) {
        Image("ellipsis")
      }.foregroundColor(Color.primary)
    }
  }
}

struct PostHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    PostHeaderView()
  }
}
