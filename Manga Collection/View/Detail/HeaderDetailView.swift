//
//  DetailHeaderView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct DetailHeaderView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var data: Manga
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                data.mangaDisplayed = false
                data.mangaSelected = nil
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
        }
    }
}

// MARK: - PREVIEW
struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Manga())
    }
}
