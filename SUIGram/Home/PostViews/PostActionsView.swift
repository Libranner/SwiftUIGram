//
//  PostActionsView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct PostActionsView: View {
  var body: some View {
    HStack(spacing: 15) {
      Button(action: {}) {
        Image("like")
      }
      Button(action: {}) {
        Image("comment")
      }
      Button(action: {}) {
        Image("send")
      }
      Spacer()
      Button(action: {}) {
        Image("archive")
      }
    }.foregroundColor(.primary)
      .padding([.top, .bottom], 5)
  }
}

struct PostActionsView_Previews: PreviewProvider {
  static var previews: some View {
    PostActionsView()
  }
}
