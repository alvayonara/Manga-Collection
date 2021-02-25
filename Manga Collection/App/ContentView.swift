//
//  ContentView.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 22/02/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @ObservedObject var networkManager = NetworkManager()
    @EnvironmentObject var data: Manga
    
    // MARK: - BODY
    var body: some View {
        if data.mangaDisplayed == false && data.mangaSelected == nil {
            ScrollView(.vertical, showsIndicators: false, content: {
                HeaderView()
                    .padding(.horizontal, 15)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom)
                
                SectionView(section: "Trending Manga")
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(networkManager.dataTrendingManga) { manga in
                            MangaRowListView(manga: manga)
                                .onTapGesture {
                                    data.mangaDisplayed = true
                                    data.mangaSelected = manga
                                }
                        }
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .padding(.trailing, 15)
                    .onAppear {
                        self.networkManager.fetchDataTrendingManga()
                    }
                })
                
                SectionView(section: "Explore Manga")
                
                LazyVGrid(columns: gridViewConfig, spacing: 15, content: {
                    ForEach(networkManager.dataAllManga) { manga in
                        MangaRowGridView(manga: manga)
                            .onTapGesture {
                                data.mangaDisplayed = true
                                data.mangaSelected = manga
                            }
                    }
                })
                .padding(15)
                .onAppear {
                    self.networkManager.fetchDataAllManga()
                }
            })
        } else {
            DetailMangaView()
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Manga())
    }
}
