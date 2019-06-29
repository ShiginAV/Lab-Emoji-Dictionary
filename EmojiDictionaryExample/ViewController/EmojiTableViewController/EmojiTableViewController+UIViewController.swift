//
//  EmojiTableViewController+UIViewController.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

// MARK: - UIViewController
extension EmojiTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = storageManager.load() ?? self.loadEmojis()
        navigationItem.leftBarButtonItem = editButtonItem
    }
}
