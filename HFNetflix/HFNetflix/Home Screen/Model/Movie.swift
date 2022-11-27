//
//  Movie.swift
//  HFNetflix
//
//  Created by LI Tian on 18/11/22.
//

import Foundation

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Episode]?
    var promotionHeadline: String?
    
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisode.description
        }
    }
}
