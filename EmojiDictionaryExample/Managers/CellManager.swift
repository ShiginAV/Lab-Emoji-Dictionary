//
//  CellManager.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 22/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import Foundation

class CellManager {
    func configure(_ cell: EmojiTableViewCell, with emoji: Emoji) {
        cell.symbolLabel?.text = emoji.symbol
        cell.nameLabel?.text = emoji.name
        cell.descriptionLabel?.text = emoji.description
    }
}
