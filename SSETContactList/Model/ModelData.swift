//
//  ModelData.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import Foundation

var jsonURL = "https://www.jsonkeeper.com/b/EBBME"

var contacts = decodeJsonFromJsonFile(inputJsonURL: jsonURL)

func decodeJsonFromJsonFile(inputJsonURL: String) -> [Contact] {
    if let url = URL(string: inputJsonURL) {
        if let data = try? Data(contentsOf: url) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Contact].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    }
    return [ ] as [Contact]
}
