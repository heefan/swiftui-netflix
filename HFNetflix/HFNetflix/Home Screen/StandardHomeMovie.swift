//
//  StandardHomeMovie.swift
//  HFNetflix
//
//  Created by LI Tian on 20/11/22.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
    
}

struct StandardHomeMovie_Preview: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
        
    }
}
