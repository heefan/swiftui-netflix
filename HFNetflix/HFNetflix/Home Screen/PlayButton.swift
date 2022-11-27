//
//  WhiteButton.swift
//  HFNetflix
//
//  Created by LI Tian on 23/11/22.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    
    var backgroundColor = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            
            PlayButton(text: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
