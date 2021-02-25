//
//  Constant.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI

// API
let baseUrl: String = "https://kitsu.io/api/edge/"

// LAYOUT
var gridViewConfig: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
}

// DATA
let sampleData: [Datum] = [
    Datum (
        id: "1",
        attributes: Attributes(
            titles: Titles(
                en: nil,
                enJp: "Guardian Dog"),
            synopsis: "Gengo Kurosaka leads a normal life until a run-away alien called \"Six-eyes\" decides to take refuge in his body. From then on, Gengo becomes Ishtar's target, a beautiful alien in charge of making sure the aliens don't turn planet Earth into hunting grounds. Gengo has now to learn to coexist with his parasite to stay alive...",
            status: "current",
            posterImage: PosterImage(
                small: "https://media.kitsu.io/manga/poster_images/1/small.jpg?1434249400"
            )
        )
    ),
    Datum (
        id: "12",
        attributes: Attributes(
            titles: Titles(
                en: "20th Century Boys",
                enJp: "20th Century Boys"),
            synopsis: "Humanity, having faced extinction at the end of the 20th century, would not have entered the new millennium if it weren't for them. In 1969, during their youth, they created a symbol. In 1997, as the coming disaster slowly starts to unfold, that symbol returns. This is the story of a group of boys who try to save the world.\r\n\r\nFor Kenji, a simple convenience store manager who once dreamed of becoming a rock 'n' roll musician, a host of memories from his past come rushing back when one of his childhood friends mysteriously commits suicide. Could this new death be related to the rise of a bizarre new cult that's been implicated in several other murders and disappearances? Determined to dig deeper, Kenji reunites with some of his old buddies in the hope of learning the truth behind it all.\r\n\r\n(Source: Viz)",
            status: "finished",
            posterImage: PosterImage(
                small: "https://media.kitsu.io/manga/poster_images/12/small.jpg?1434249422"
            )
        )
    ),
]


