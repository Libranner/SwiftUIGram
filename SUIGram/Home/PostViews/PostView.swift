//
//  PostView.swift
//  SUIGram
//
//  Created by Libranner Leonel Santos Espinal on 27/10/2019.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct PostView: View {
  var body: some View {
    VStack(alignment: .leading) {
      PostHeaderView().padding([.leading, .trailing], 10)

      HStack(alignment: .center) {
        Image("sample")
      }
      
      Group {
        PostActionsView()
        PostCaptionView()
        PostCommentsView()
      }.padding([.leading, .trailing], 10)
    }
  }
}

struct PostView_Previews: PreviewProvider {
  static var previews: some View {
    PostView()
  }
}
