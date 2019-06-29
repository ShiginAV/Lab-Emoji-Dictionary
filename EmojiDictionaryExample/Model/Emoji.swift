//
//  Emoji.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

class Emoji : Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    var encoded: Data? {
        let encoder = PropertyListEncoder()
        return try? encoder.encode(self)
    }
    
    init(symbol: String = "", name: String = "", description: String = "", usage: String = "") {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
    
    convenience init?(from data: Data) {
        let decoder = PropertyListDecoder()
        guard let emoji = try? decoder.decode(Emoji.self, from: data) else { return nil }
        self.init(symbol: emoji.symbol, name: emoji.name, description: emoji.description, usage: emoji.usage)
    }
}
