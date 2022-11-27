//
//  Trailer.swift
//  HFNetflix
//
//  Created by LI Tian on 26/11/22.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    
    var name: String
    var videoURL: URL
    var thumbnialImageURL: URL
    
}
