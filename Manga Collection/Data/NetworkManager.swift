//
//  NetworkManager.swift
//  Manga Collection
//
//  Created by Alva Yonara Puramandya on 23/02/21.
//

import Foundation

class NetworkManager: ObservableObject {
     
    @Published var dataTrendingManga = [Datum]()
    @Published var dataAllManga = [Datum]()
    
    func fetchDataTrendingManga() {
        if let url = URL(string: "\(baseUrl)trending/manga") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            
                            DispatchQueue.main.async {
                                self.dataTrendingManga = results.data
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    func fetchDataAllManga() {
        if let url = URL(string: "\(baseUrl)manga?filter[categories]=adventure") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            
                            DispatchQueue.main.async {
                                self.dataAllManga = results.data
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
