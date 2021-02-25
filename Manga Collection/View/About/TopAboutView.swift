//
//  ContentAboutView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct TopAboutView: View {
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 6, content: {
            Text("Alva Yonara Puramandya")
                .font(.title)
            
            Text("Android Engineer")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            Text("alvayonara@outlook.com")
                .fontWeight(.light)
                .foregroundColor(.gray)
        })
    }
}

// MARK: - PREVIEW
struct TopAboutView_Previews: PreviewProvider {
    static var previews: some View {
        TopAboutView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
