//
//  DetailMangaView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI

struct DetailMangaView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var data: Manga
    
    // MARK: - BODY
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - PREVIEW
struct DetailMangaView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMangaView()
            .environmentObject(Manga())
    }
}
