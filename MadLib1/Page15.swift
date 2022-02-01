//
//  Page16.swift
//  MadLib1
//
//  Created by Erik Mikac on 1/30/22.
//

import SwiftUI

struct Page15: View {
    var word = Word()
    @State private var newWord = ""
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var errorShowing = false
    private let utilities = Utilities()
    @State private var color = Color.red
    @State private var continuePhrase = "Continue"
    @State private var isValid = false
    private let pageOrder = 15
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack(alignment: .center) {
                Spacer()
                Text("Pick a unit of measurement. (Mile, kilometer, inch, etc.)")
                    .font(.largeTitle)
                    .padding()
                    .background(self.color)
                    .font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
            }.padding()
            Spacer()
            VStack(alignment: .leading) {
                Text("Word")
                    .font(.callout)
                    .bold()
                    .padding()
                HStack {
                    TextField("", text: $newWord, onCommit: verifyWord)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .autocapitalization(.none)
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: Page16(word: word), isActive: $isValid) {
                    EmptyView()
                 }
                 .simultaneousGesture(TapGesture().onEnded{
                  let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                  impactHeavy.impactOccurred()
     
              })
                
                Spacer()
            }
            .padding()
            
        }
        .alert(isPresented: $errorShowing) {
            Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
        }
        .onAppear {
            color = utilities.colors.randomElement() ?? Color.red
            continuePhrase = utilities.continuePhrase.randomElement() ?? "Continue"
        }
        
    }
       
    func verifyWord() {
        
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        var currentWords: [String] = []
        var doesWordForThisPageExist: WordModel?
        for w in self.word.words {
            currentWords.append(w.word)
            if(w.order == pageOrder) {
                doesWordForThisPageExist = w
            }
        }
        guard answer.count > 0 else {
            self.isValid = false
            return
        }
        guard self.utilities.isOriginal(word: answer, words: currentWords, order: pageOrder) else {
            wordError(title: "Word used already!", message: "Be more original!")
            self.isValid = false
            return
        }
        guard self.utilities.isPossible(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make up words, ya know.")
            self.isValid = false
            return
        }
        
        guard self.utilities.isReal(word: answer) else {
            wordError(title: "Word not possible", message: "That isn't a real word.")
            self.isValid = false
            return
        }
        
        guard self.utilities.isLessThanTwo(word: answer) else {
            wordError(title: "Word too small.", message: "Word must be more than three letters.")
            self.isValid = false
            return
        }
        
        self.isValid = true
        if doesWordForThisPageExist == nil {
            self.word.words.append(WordModel(order: pageOrder, word: answer, story: "Pirate"))
        } else {
            self.word.words.sort {
                return $0.order < $1.order
            }
            self.word.words.remove(at: pageOrder - 1)
            self.word.words.append(WordModel(order: pageOrder, word: answer, story: "Pirate"))
            self.word.words.sort {
                return $0.order < $1.order
            }
            
        }

        print(self.word.words)
    }
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        errorShowing = true
    }
}

struct Page15_Previews: PreviewProvider {
    static var previews: some View {
        Page15()
    }
}
