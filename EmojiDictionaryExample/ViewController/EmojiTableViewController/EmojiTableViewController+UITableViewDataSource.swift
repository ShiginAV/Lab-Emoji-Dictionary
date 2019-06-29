//
//  EmojiTableViewController+UITableViewDataSource.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

// MARK: - UITableViewDataSource
extension EmojiTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell") as! EmojiTableViewCell
        let emoji = emojis[indexPath.section][indexPath.row]
        cellManager.configure(cell, with: emoji)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = emojis[sourceIndexPath.section].remove(at: sourceIndexPath.row)
        emojis[destinationIndexPath.section].insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return kSectionCategorys[section]
    }
}
