//
//  HeaderAboutView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct HeaderAboutView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var data: Manga
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                data.profileDisplayed = false
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
            })
            
            Spacer()
        }
    }
}

struct HeaderAboutView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderAboutView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Manga())
    }
}
