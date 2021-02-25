//
//  HeaderView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "slider.horizontal.3")
                    .font(.title)
                    .foregroundColor(.black)
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
    }
}
