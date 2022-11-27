//
//  MovieDetailView.swift
//  HFNetflix
//
//  Created by LI Tian on 24/11/22.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            
                        }
                        
                        CurrentEpisodeInfoView(movie: movie)
                        CastInfoView(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List",
                                                isOnImage: "checkmark",
                                                isOffImage: "plus",
                                                isOn: true) {
                                
                            }
                            
                            SmallVerticalButton(text: "Rate",
                                                isOnImage: "hand.thumbsup.fill",
                                                isOffImage: "hand.thumbsup",
                                                isOn: true) {
                                
                            }
                            
                            SmallVerticalButton(text: "Share",
                                                isOnImage: "square.and.arrow.up",
                                                isOffImage: "square.and.arrow.up",
                                                isOn: true) {
                                
                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                    
                        CustomTabSwitcher(tabs: [.episode, .trailers, .more],
                                          movie: movie,
                                          showSeasonPicker: $showSeasonPicker,
                                          selectedSeason: $selectedSeason)
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            
            Group {
                if showSeasonPicker {
                    Color.black.opacity(0.9)
                    
                    
                    VStack(spacing: 40) {
                        Spacer()
                        
                        // https://imtx.me/blog/xcode-13-3-swiftui-foreach-non-constant-range-warning/
                        let numberOfSeason: Int = movie.numberOfSeasons ?? 0
                        ForEach(0..<numberOfSeason, id: \.self) { season in
                            Button {
                                self.selectedSeason = season + 1
                                self.showSeasonPicker = false
                            } label: {
                                Text("Season \(season + 1)")
                                    .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                    .bold()
                                    .font(selectedSeason == season + 1 ? .title : .title2)
                            }
                            
                        }
                        
                        Spacer()
                        
                        Button {
                            self.showSeasonPicker = false
                        } label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        }
                        .padding(.bottom, 30)
                        
                    }
                    
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: exampleMovie1)
    }
}

struct CastInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("creator: \(movie.creators)")
                Spacer()
            }
            
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInfoView: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                Spacer()
            }
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}


