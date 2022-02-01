//
//  Utilities.swift
//  MadLib1
//
//  Created by Erik Mikac on 1/30/22.
//

import Foundation
import SwiftUI
class Utilities {

    func isOriginal(word: String, words: [String], order: Int) -> Bool {
        if(words.contains(word)) {
            var i = 0
            while i < words.count {
                if i == (order - 1) && words[i] == word {
                    return true
                }
                i = i + 1
            }
            return false
        }
        return true
        }
    func isPossible(word: String) -> Bool {
        var tempWord = word.lowercased()
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
                }
            }
            return true
        }
     func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRanged = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRanged.location == NSNotFound
    }
    
     func isLessThanTwo(word: String) -> Bool {
        return word.count > 2
    }
    
    func getWordsFromModel(word: Word) -> [String] {
        var currentWords: [String] = []
        for wordModel in word.words{
            currentWords.append(wordModel.word)
        }
        return currentWords
    }
    

    
    let colors: [Color] = [ Color.red, Color.cyan, Color.orange, Color.pink, Color.indigo, Color.mint, Color.green, Color.yellow, Color.blue]
    
    let continuePhrase = ["Continue", "Keep Going", "Next", "So Far, So Good"]
}

