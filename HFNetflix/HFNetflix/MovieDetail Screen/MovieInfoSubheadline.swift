//
//  MovieInfoSubheadline.swift
//  HFNetflix
//
//  Created by LI Tian on 24/11/22.
//

import SwiftUI

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}


struct MovieInfoSubheadline_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            MovieInfoSubheadline(movie:  exampleMovie3)
        }
    }
}

