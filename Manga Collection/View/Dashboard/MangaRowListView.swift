//
//  MangaRowListView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI
import URLImage

struct MangaRowListView: View {
    
    // MARK: - PROPERTIES
    let manga: Datum
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, content: {
            URLImage(url: manga.attributes.posterImage.posterImageURL,
                     content: { image in image
                        .resizable()
                     })
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(12)
            
            Text((manga.attributes.titles.en ?? manga.attributes.titles.enJp) ?? "-")
                .font(.title3)
                .fontWeight(.black)
                .lineLimit(1)
            
            Text(manga.attributes.status)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .lineLimit(1)
        })
        .padding(.leading, 15)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

// MARK: - PREVIEW
struct MangaRowListView_Previews: PreviewProvider {
    static var previews: some View {
        MangaRowListView(manga: sampleData[0])
            .previewLayout(.sizeThatFits)
    }
}
