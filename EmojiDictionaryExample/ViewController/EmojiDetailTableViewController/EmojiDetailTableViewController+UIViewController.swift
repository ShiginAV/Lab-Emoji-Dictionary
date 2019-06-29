//
//  EmojiDetailTableViewController+UIViewController.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 27/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
        usageTextField.text = emoji.usage
        
        self.updateUI()
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        usageTextField.inputView = pickerView
    }
}
