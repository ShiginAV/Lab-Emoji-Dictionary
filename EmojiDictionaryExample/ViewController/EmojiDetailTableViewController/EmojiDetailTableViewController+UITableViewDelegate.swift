//
//  EmojiDetailTableViewController+UITableViewDelegate.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 28/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
