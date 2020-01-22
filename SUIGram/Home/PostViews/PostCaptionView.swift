//
//  PostCaptionView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct PostCaptionView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("1,000 likes")
        .font(.body)
        .bold()
      HStack {
        Text("basketzaragoza")
          .font(.body)
          .bold()
          +
          Text(" ")
          +
          Text("No words neededNo words neededNo words neededNo words neededNo words neededNo words neededNo words needed")
            .font(.body)
      }
    }
  }
}

struct PostCaptionView_Previews: PreviewProvider {
  static var previews: some View {
    PostCaptionView()
  }
}
