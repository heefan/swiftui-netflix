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
}
