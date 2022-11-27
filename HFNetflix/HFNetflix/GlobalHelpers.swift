//
//  GlobalHelpers.swift
//  HFNetflix
//
//  Created by LI Tian on 20/11/22.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/1080/Big_Buck_Bunny_1080_10s_1MB.mp4")!
let exampleImageURL1 = URL(string: "https://picsum.photos/200/305")!
let exampleImageURL2 = URL(string: "https://picsum.photos/200/306")!
let exampleImageURL3 = URL(string: "https://picsum.photos/200/308")!

let exmapleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnialImageURL: randomExampleImageURL)
let exmapleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnialImageURL: randomExampleImageURL)
let exmapleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnialImageURL: randomExampleImageURL)

let exampleTrailers = [exmapleTrailer1, exmapleTrailer2, exmapleTrailer3]

var randomExampleImageURL: URL {
    return [exampleImageURL1, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL1
}

let episode1 = Episode(name: "Beginings and Endings",
                       season: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)

let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)

let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)


let episode4 = Episode(name: "Beginnings and Endings",
                       season: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)


let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)

let episode6 = Episode(name: "Ghost",
                       season: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/200",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       episodeNumber: 2,
                       videoURL:exampleVideoURL)

let exampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          episodes: exampleEpisodes,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6],
                          trailers: exampleTrailers)

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travellers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)

let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Communitity",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [exampleMovie4, exampleMovie5, exampleMovie6],
                          trailers: exampleTrailers)

let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)


let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)


let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          promotionHeadline: "Watch Season 6 Now",
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)


var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisode = CurrentEpisodeInfo(episodeName: "Beginnigs and Ending",
                                        description: "Six months after the disappearance, the police from a task in 2052, Jona learns taht most of winden perished in an apocalyptic",
                                        season: 2,
                                        episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
