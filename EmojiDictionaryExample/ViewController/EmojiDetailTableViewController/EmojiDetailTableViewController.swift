//
//  EmojiDetailTableViewController.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 25/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

class EmojiDetailTableViewController: UITableViewController {
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    
    @IBOutlet weak var saveBarBtn: UIBarButtonItem!
    
    var emoji = Emoji()
    
    @IBAction func actionTextEditingChanged(_ sender: UITextField) {
        self.updateUI()
    }
}
