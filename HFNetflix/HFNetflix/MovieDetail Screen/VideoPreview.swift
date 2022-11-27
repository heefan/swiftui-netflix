//
//  VideoPreviewView.swift
//  HFNetflix
//
//  Created by LI Tian on 26/11/22.
//

import SwiftUI
import Kingfisher

struct VideoPreview: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button {
                
            } label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            }
            .sheet(isPresented: $showingVideoPlayer, content: {
                VideoView(url: videoURL)
            })
        }
        
    }
}

struct VideoPreview_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreview(imageURL: exampleImageURL1, videoURL: exampleVideoURL)
    }
}
