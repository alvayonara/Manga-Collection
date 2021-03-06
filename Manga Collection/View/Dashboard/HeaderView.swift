//
//  HeaderView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var data: Manga
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                data.profileDisplayed = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
                    .font(.title)
            })
        }
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Manga())
    }
}
