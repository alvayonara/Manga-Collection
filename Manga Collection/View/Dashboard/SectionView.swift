//
//  SectionView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - PROPERTIES
    let section: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(section)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(section: "Trending Manga")
            .previewLayout(.sizeThatFits)
    }
}
