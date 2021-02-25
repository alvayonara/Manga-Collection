//
//  MangaRowGridView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI
import URLImage

struct MangaRowGridView: View {
    
    // MARK: - PROPERTIES
    let manga: Datum
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            GeometryReader { gr in
                URLImage(url: manga.attributes.posterImage.posterImageURL, content: { image in image.resizable()
                })
                .scaledToFill()
                .frame(height: gr.size.width)
                .position(x: gr.frame(in: .local).midX, y: gr.frame(in: .local).midY)
            }
            .clipped()
            .cornerRadius(12)
            .aspectRatio(1, contentMode: .fit)
            
            Text((manga.attributes.titles.en ?? manga.attributes.titles.enJp) ?? "-")
                .font(.title3)
                .fontWeight(.black)
                .lineLimit(1)
            
            Text(manga.attributes.status)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .lineLimit(1)
        })
    }
}

// MARK: - PREVIEW
struct MangaRowGridView_Previews: PreviewProvider {
    static var previews: some View {
        MangaRowGridView(manga: sampleData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
