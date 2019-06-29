//
//  EmojiDetailTableViewController+Navigation.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 28/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveSegue" else { return }
        
        emoji.symbol = symbolTextField.text ?? ""
        emoji.name = nameTextField.text ?? ""
        emoji.description = descriptionTextField.text ?? ""
        emoji.usage = usageTextField.text ?? ""
    }
}
