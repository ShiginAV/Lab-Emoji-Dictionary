//
//  EmojiTableViewController+Navigation.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 27/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "editEmojiSegue" else { return }
        guard let destination = segue.destination as? EmojiDetailTableViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        destination.navigationItem.title = "Edit"
        destination.emoji = emojis[index.section][index.row]
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        guard let source = segue.source as? EmojiDetailTableViewController else { return }
        let emoji = source.emoji
        
        if let index = tableView.indexPathForSelectedRow {
            emojis[index.section][index.row] = emoji
            tableView.reloadRows(at: [index], with: .fade)
        } else {
            if let sectionType = source.usageTextField.text {
                var indexPath = IndexPath(row: 0, section: 0)
                
                for index in 0..<kSectionCategorys.count {
                    if kSectionCategorys[index] == sectionType {
                        indexPath = IndexPath(row: emojis[index].count, section: index)
                        break
                    }
                }
                
                emojis[indexPath.section].append(emoji)
                tableView.insertRows(at: [indexPath], with: .automatic)
            }
        }
    }
}
