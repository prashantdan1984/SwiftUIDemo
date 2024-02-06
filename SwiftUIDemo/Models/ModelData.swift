//
//  ModelData.swift
//  SwiftUIDemo
//
//  Created by Prashantdan on 02/02/24.
//

import Foundation
var landmarks:[Landmark] = load("landmarkData.json")
func load<T: Decodable>(_ filename: String) ->T {
    
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else{
        fatalError("couldent load\(filename) from bundel")
    }
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("couldent load \(filename) from main bundel")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("couldent load \(filename) from main bundel")
    }
}
