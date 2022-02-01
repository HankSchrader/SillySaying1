//
//  PirateView.swift
//  MadLib1
//
//  Created by Erik Mikac on 1/30/22.
//

import SwiftUI

struct PirateView: View {
    var word = Word()
    let utilties = Utilities()
    var lastWord = ""
    var body: some View {
        let t0: Text = Text(word.words[0].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t1: Text = Text(word.words[1].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t2: Text = Text(word.words[2].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t3: Text = Text(word.words[3].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t4: Text = Text(word.words[4].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t5: Text = Text(word.words[5].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t6: Text = Text(word.words[6].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t7: Text = Text(word.words[7].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t8: Text = Text(word.words[8].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t9: Text = Text(word.words[9].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t10: Text = Text(word.words[10].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t11: Text = Text(word.words[11].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t12: Text = Text(word.words[12].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t13: Text = Text(word.words[13].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t14: Text = Text(word.words[14].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t15: Text = Text(word.words[15].word.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        let t16: Text = Text(lastWord.uppercased()).bold().foregroundColor(utilties.colors.randomElement())
        ScrollView {
            
            
            VStack {
                
                
                Text("Your quest is straightforward: find the long lost ") + t0 + Text(" that went down with the S.S. ") + t1 + Text(". This isnt just any ") + t0 + Text(" though. This one is made from solid ") + t2 + Text(" and encrusted with diamond ") + t3 + Text(".")
                Spacer()
                Text("So far you've been scuba diving for ") + t4 + Text(" and you don't seem any closer to finding your treasure. You feel ") + t5 + Text(" but you press on and swim by a coral reef inhabited by ") + t6 + Text(" ") + t7 + Text( " fish.")
                Spacer()
                Text("You're just about to give up your search when you see it! Down in a dark trench is the shipwrecked remains of the S.S. ") + t1 + Text(". The wood is rotted out and the whole thing looks ") + t8 + Text(", but you're sure this is the one.")
                Spacer()
                Text("You swim through a hole in the hull of the ship, ready to claim your treasure. But instead, you come face to face with a ") + t9 + Text(" ") + t10 + Text(". It's the most ") + t11 + Text(" horrifying thing you’ve ever seen.")
                
                Spacer()
                VStack {
                    Text("You turn to make a hasty getaway, but the way you came in is now blocked by a pack of ") + t12 + Text(" looking ") + t13 + Text(".")
                    Spacer()
                    Text("Up ahead is another rotted out hole, you swim through towards the bow of the ship. The ") + t9 + Text(" ") + t10 + Text(" is close behind. You swim harder than you ever have before. You won't be happy until you're ") + t14 + Text(" away from that horrible creature.")
                    Spacer()
                    Text("Then all of a sudden you see a tarnished but still ") + t15 + Text(" treasure chest. With all your strength you wrench it open and find the solid ") + t2 + Text(" ") + t0 + Text(" encrusted with diamond ") + t3 + Text(". It's the most ") + t16 + Text(" thing you've ever seen.")
                    Spacer()
                    Text("And it seems like the ") + t9 + Text(" ") + t10 + Text(" thinks so too. You were so distracted you didn't even notice it swim up behind you. Fortunately, and also unfortunately, the object of his pursuit has shifted from you to the treasure. The creature snatches it up and swims away and all you're left with is this story.")
                }
                
                
            }
            .padding()
            
            
        }
    }
}

struct PirateView_Previews: PreviewProvider {
    static var previews: some View {
        PirateView()
    }
}
