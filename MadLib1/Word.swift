//
//  Word.swift
//  MadLib1
//
//  Created by Erik Mikac on 1/30/22.
//

import Foundation
import SwiftUI


struct WordModel {
    

    var order: Int
    var word: String
    var story: String
    
    init(order: Int, word: String, story: String) {
        self.order = order
        self.word = word
        self.story = story
    }
}

class Word: ObservableObject {
    @Published var words: [WordModel] = []

}
