//
//  MangaModel.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import Foundation
import SwiftUI

// MARK: - RESULTS
struct Results: Codable {
    let data: [Datum]
}

// MARK: - DATUM
struct Datum: Codable, Identifiable {
    let id: String
    let attributes: Attributes
}

// MARK: - ATTRIBUTES
struct Attributes: Codable {
    let titles: Titles
    let synopsis: String
    let status: String
    let posterImage: PosterImage
}

// MARK: - TITLES
struct Titles: Codable {
    let en: String?
    let enJp: String?
    
    enum CodingKeys: String, CodingKey {
        case en
        case enJp = "en_jp"
    }
}

// MARK: - POSTER
struct PosterImage: Codable {
    let small: String
    
    var posterImageURL: URL { return URL(string: small)! }
}
