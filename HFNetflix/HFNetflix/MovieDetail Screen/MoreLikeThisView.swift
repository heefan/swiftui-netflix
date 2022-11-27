//
//  MoreLikeThisView.swift
//  HFNetflix
//
//  Created by LI Tian on 26/11/22.
//

import SwiftUI

struct MoreLikeThisView: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns) {
                ForEach(movies) { movie in
                    StandardHomeMovie(movie: movie)
                }
            }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: exampleMovies)
    }
}
