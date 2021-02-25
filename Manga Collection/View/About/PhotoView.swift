//
//  PhotoView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        Image("profile-bar")
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
