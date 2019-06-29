//
//  StorageManager.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 29/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import Foundation

class StorageManager {
    let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL: URL
    
    init() {
        archiveURL = documentDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
    }
    
    func save(emojis: [[Emoji]]) {
        let encoder = PropertyListEncoder()
        guard let encodedEmojis = try? encoder.encode(emojis) else { return }
        try? encodedEmojis.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() -> [[Emoji]]? {
        guard let data = try? Data(contentsOf: archiveURL) else { return nil }
        let decoder = PropertyListDecoder()
        return try? decoder.decode([[Emoji]].self, from: data)
    }
}
