//
//  AboutView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 25/02/21.
//

import SwiftUI

struct AboutView: View {
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 6, content: {
            HeaderAboutView()
                .padding(.horizontal, 15)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom)
            
            PhotoView()
            
            TopAboutView()
                .padding(.top, 10)
            
            GroupBox(label: Text("About Me").fontWeight(.bold), content: {
                
                AboutRowView(name: "Website", linkName: "alvayonara.com", link: "www.alvayonara.com")
                
                AboutRowView(name: "GitHub", linkName: "alvayonara", link: "www.github.com/alvayonara")
                
                AboutRowView(name: "LinkedIn", linkName: "Alva Yonara Puramandya", link: "www.linkedin.com/in/alva-yonara-puramandya")
            })
            .padding(.top, 10)
            .padding()
            
            Spacer()
        })
    }
}

// MARK: - PREVIEW
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
