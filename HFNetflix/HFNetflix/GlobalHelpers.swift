//
//  GlobalHelpers.swift
//  HFNetflix
//
//  Created by LI Tian on 20/11/22.
//

import Foundation

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travellers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
                          
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Communitity",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
                          
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])

let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])

let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])


let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
