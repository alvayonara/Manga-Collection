//
//  AboutRowView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct AboutRowView: View {
    
    // MARK: - PROPERTIES
    let name: String
    let linkName: String
    let link: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Link(linkName, destination: URL(string: "https://\(link)")!)
                
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

// MARK: - PREVIEW
struct AboutRowView_Previews: PreviewProvider {
    static var previews: some View {
        AboutRowView(name: "Github", linkName:"alvayonara", link: "www.github.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
