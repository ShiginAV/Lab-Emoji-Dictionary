//
//  EmojiDetailTableViewController+UIPickerViewDelegate.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 29/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return kSectionCategorys[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        usageTextField.text = kSectionCategorys[row]
        self.updateUI()
    }
}
