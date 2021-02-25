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
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 6, content: {
                DetailHeaderView()
                    .padding(.horizontal, 15)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom)
                
                TopDetailView()
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text(data.mangaSelected?.attributes.synopsis ?? sampleData[0].attributes.synopsis)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding()
            })
            .ignoresSafeArea(.all, edges: .all)
        })
    }
}

// MARK: - PREVIEW
struct DetailMangaView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMangaView()
            .environmentObject(Manga())
    }
}
