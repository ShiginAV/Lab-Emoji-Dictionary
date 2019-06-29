//
//  EmojiDetailTableViewController+UIPickerViewDataSource.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 29/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

extension EmojiDetailTableViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return kSectionCategorys.count
    }
}
