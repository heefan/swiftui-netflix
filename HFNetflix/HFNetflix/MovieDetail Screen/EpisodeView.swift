//
//  EpisodeView.swift
//  HFNetflix
//
//  Created by LI Tian on 26/11/22.
//

import SwiftUI

struct EpisodeView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({$0.season == season})
    }
    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Button {
                    
                } label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }
                
                Spacer()
            }
            
            let selectedEpisodes = getEpisodes(forSeason: selectedSeason)
            ForEach(selectedEpisodes) { episode in
                VStack(alignment: .leading) {
                    // HStack with preivew image
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width:120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Image(systemName:"arrow.down.to.line.alt")
                        
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodeView(episodes: exampleEpisodes,
                        showSeasonPicker: .constant(false),
                        selectedSeason: .constant(1))
        }
    }
}
