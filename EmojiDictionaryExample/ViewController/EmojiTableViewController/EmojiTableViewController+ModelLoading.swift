//
//  EmojiTableViewController+ModelLoading.swift
//  EmojiDictionaryExample
//
//  Created by Alexander on 20/06/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//


// MARK: - Model Loading
extension EmojiTableViewController {
    func loadEmojis() -> [[Emoji]] {
        return [
            [
                Emoji(symbol: "☀️", name: "Sun", description: "Yellow sun", usage: kSectionCategorys[0]),
                Emoji(symbol: "🌈", name: "Rainbow", description: "Brigt rainbow", usage: kSectionCategorys[0]),
                Emoji(symbol: "💦", name: "Rain", description: "Blue rain", usage: kSectionCategorys[0]),
                Emoji(symbol: "❄️", name: "Snow", description: "White snow", usage: kSectionCategorys[0])
            ],
            [
                Emoji(symbol: "🐶", name: "Dog", description: "White dog", usage: kSectionCategorys[1]),
                Emoji(symbol: "🐱", name: "Cat", description: "Yellow cat", usage: kSectionCategorys[1]),
                Emoji(symbol: "🐭", name: "Mouse", description: "Grey moyse", usage: kSectionCategorys[1]),
                Emoji(symbol: "🦊", name: "Fox", description: "Orange fox", usage: kSectionCategorys[1])
            ],
            [
                Emoji(symbol: "🍎", name: "Apple", description: "Red apple", usage: kSectionCategorys[2]),
                Emoji(symbol: "🍌", name: "Banana", description: "Yellow banana", usage: kSectionCategorys[2]),
                Emoji(symbol: "🍋", name: "Lemon", description: "Yellow lemon", usage: kSectionCategorys[2]),
                Emoji(symbol: "🍒", name: "Cherry", description: "Red cherry", usage: kSectionCategorys[2])
            ],
            [
               Emoji(symbol: "🥔", name: "Potato", description: "Brown potato", usage: kSectionCategorys[3]),
               Emoji(symbol: "🥒", name: "Cucumber", description: "Green cucumber", usage: kSectionCategorys[3]),
               Emoji(symbol: "🥕", name: "Carrot", description: "Orange carrot", usage: kSectionCategorys[3]),
               Emoji(symbol: "🌶", name: "Pepper", description: "Red pepper", usage: kSectionCategorys[3])
            ]
        ]
    }
}
