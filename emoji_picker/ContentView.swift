//
//  ContentView.swift
//  emoji_picker
//
//  Created by Ahkar Hein on 2/22/25.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🤪, 😭, 🤑, 🪅
}

struct ContentView: View {
    @State var selection : Emoji = .🪅
    
    var body: some View {
        NavigationStack{
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 200))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker")
            .fontDesign(.monospaced)
        }
    }
}

#Preview {
    ContentView()
}
