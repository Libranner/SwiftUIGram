//
//  PostCommentsView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 03/11/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct PostCommentsView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 1) {
      Text("View all 58 comments").font(.caption)
      Text("User100")
        .font(.caption)
        .bold()
        +
        Text(" ")
        +
        Text("Best post ever")
          .font(.caption)
    }
  }
}

struct PostCommentsView_Previews: PreviewProvider {
    static var previews: some View {
        PostCommentsView()
    }
}
