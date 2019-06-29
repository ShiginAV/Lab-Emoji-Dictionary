//
//  EmojiTableViewController+UITableViewDelegate.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

// MARK: - UITableViewDelegate
extension EmojiTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            emojis[indexPath.section].remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        case .insert:
            break
        default:
            break
        }
    }
}
