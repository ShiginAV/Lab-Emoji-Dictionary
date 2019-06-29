//
//  EmojiTableViewController.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    let cellManager = CellManager()
    let storageManager = StorageManager()
    var emojis: [[Emoji]]! {
        didSet {
           storageManager.save(emojis: emojis)
        }
    }
}
