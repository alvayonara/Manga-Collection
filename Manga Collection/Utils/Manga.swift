//
//  Manga.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import Foundation

class Manga: ObservableObject {
    
    @Published var mangaDisplayed: Bool = false
    @Published var mangaSelected: Datum? = nil
    @Published var profileDisplayed: Bool = false
}
