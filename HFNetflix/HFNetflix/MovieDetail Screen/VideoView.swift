//
//  VideoView.swift
//  HFNetflix
//
//  Created by LI Tian on 26/11/22.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(url: exampleVideoURL)
    }
}
