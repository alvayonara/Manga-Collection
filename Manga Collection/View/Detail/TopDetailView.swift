//
//  TopDetailView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI
import URLImage

struct TopDetailView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var data: Manga
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            URLImage(url: data.mangaSelected?.attributes.posterImage.posterImageURL ?? sampleData[0].attributes.posterImage.posterImageURL,
                     content: { image in image
                        .resizable()
                     })
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(12)
                .padding(.bottom, 10)
                .offset(y: isAnimated ? 0 : -35)
            
            Text((data.mangaSelected?.attributes.titles.en ?? data.mangaSelected?.attributes.titles.enJp) ?? "-")
                .font(.title)
                .fontWeight(.black)
                .offset(y: isAnimated ? -10: -50)
            
            Text(data.mangaSelected?.attributes.status ?? sampleData[0].attributes.status)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .offset(y: isAnimated ? -10: -50)
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimated.toggle()
            }
        })
    }
}

// MARK: - PREVIEW
struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .environmentObject(Manga())
    }
}
