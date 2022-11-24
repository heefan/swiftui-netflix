//
//  TopRowButton.swift
//  HFNetflix
//
//  Created by LI Tian on 24/11/22.
//

import SwiftUI


struct TopRowButton: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: { }, label: {
                Text("TV Shows")
            })
            .foregroundColor(.white)
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Movies")
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.white)
            
            Spacer()
            Button {
                
            } label: {
                Text("My List")
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.white)
        }
//        .background(Color.black)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}


struct TopRowButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            
            TopRowButton()
        }
    }
}
