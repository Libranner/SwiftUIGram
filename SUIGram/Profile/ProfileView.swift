//
//  ProfileView.swift
//  SUIGram
//
//  Created by Misael Cuevas Vásquez on 10/27/19.
//  Copyright © 2019 SUIGram. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var viewChoice = 0
    var settings = ["Grid", "Tag"]
    
    var body: some View {
        VStack(alignment: .leading) {
            ProfileHeaderView()
            
            Button(action: onEditProfileClicked) {
                Spacer()
                
                Text("Edit Profile")
                    .foregroundColor(.black)
                    .bold()
                    .padding(5)
                
                Spacer()
            }
            .border(Color.gray.opacity(0.3), width: 1)
            .cornerRadius(3.0)
            
            ProfileStoriesView()
            
            Picker("Options", selection: $viewChoice) {
                ForEach(0 ..< settings.count) { index in
                    Text(self.settings[index])
                        .tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            List() {
                ForEach(0..<8) { _ in
                    HStack {
                        ForEach(0..<3) { _ in
                            Image("profilePhoto")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
            
            Spacer()
        }
        .navigationBarTitle(Text("mcvasquez09"), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {}, label: {
            Image(systemName: "text.justify")
        }))
        .padding()
    }
    
    func onEditProfileClicked() {
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ProfileView()
            }
            
            ProfileImageView()
                .previewLayout(.sizeThatFits)
        }
    }
}

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    ProfileImageView()
                    
                    Button(action: {}) {
                        Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(Color.blue)
                        .background(Color.white)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 1.5)
                        )
                    }
                    .offset(x: 30, y: 25)
                }
                
                Spacer()
                
                VStack {
                    Text("24")
                        .bold()
                    Text("Posts")
                }
                
                Spacer()
                
                VStack {
                    Text("206")
                        .bold()
                    Text("Followers")
                }
                
                Spacer()
                
                VStack {
                    Text("600")
                        .bold()
                    Text("Following")
                }
            }
            
            Text("Misael Cuevas Vásquez")
                .bold()
            
            Text("MCMXCII. 🚀")
            
            Text("www.mcvasquez.com")
                .foregroundColor(.blue)
            
        }.padding(.bottom, 10)
    }
}

struct ProfileImageView: View {
    var body: some View {
        Image("profilePhoto")
            .resizable()
            .frame(width: 75, height: 75, alignment: .center)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 2)
            )
            .padding(2)
            .overlay(
                Circle().strokeBorder(Color.black.opacity(0.1))
        )
    }
}

struct ProfileStoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    VStack {
                        ProfileImageView()
                        
                        Text("New")
                            .font(.callout)
                    }
                }
            }
        }
    }
}
