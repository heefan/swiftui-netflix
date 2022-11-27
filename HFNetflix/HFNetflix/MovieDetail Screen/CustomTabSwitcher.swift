//
//  CustomTabSwitcher.swift
//  HFNetflix
//
//  Created by LI Tian on 25/11/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs : [CustomTab]
    var movie: Movie
    
    @State private var currentTab: CustomTab = .episode
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight:.bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red: Color.clear)
                            
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundStyle(tab == currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            
            // Selected View
            switch currentTab {
            case .episode:
                EpisodeView(episodes: movie.episodes ?? [],
                            showSeasonPicker: .constant(false),
                            selectedSeason: .constant((1)))
            case .trailers:
                TrailerList(trailers: movie.trailers)
                
            case .more:
                MoreLikeThisView(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episode, .trailers, .more], movie: exampleMovie1,
                              showSeasonPicker: .constant(false),
                              selectedSeason: .constant(1))
        }
    }
}

enum CustomTab: String {
    case episode = "EPISODEDS"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
