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
        VStack {
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
                Text(episode.name)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            EpisodeView(episodes: exampleEpisodes,
                        showSeasonPicker: .constant(false),
                        selectedSeason: .constant(1))
        }
    }
}
