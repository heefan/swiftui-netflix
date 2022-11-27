//
//  CurrentEpisodeInfo.swift
//  HFNetflix
//
//  Created by LI Tian on 24/11/22.
//

import Foundation

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
