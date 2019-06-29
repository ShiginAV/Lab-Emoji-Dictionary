//
//  EmojiDetailTableViewController+UI.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 28/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController {
    func updateUI() {
        saveBarBtn.isEnabled =
            symbolTextField.text!.count == 1
            && !nameTextField.text!.isEmpty
            && !descriptionTextField.text!.isEmpty
            && !usageTextField.text!.isEmpty
    }
}
