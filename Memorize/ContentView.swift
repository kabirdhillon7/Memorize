//
//  ContentView.swift
//  Memorize
//
//  Created by Kabir Dhillon on 10/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
            .padding(.horizontal)
            .foregroundColor(.red)
        }
    }


struct CardView: View {
    var isFaceUp: Bool = true
    
    var body: some View {
        HStack {
            ZStack {
                var shape = RoundedRectangle(cornerRadius: 20)
                
                if isFaceUp{
                    shape.fill().foregroundColor(.white)
                    shape.stroke(lineWidth: 3).fill()
                    Text("✈️").font(.largeTitle)
                } else{
                    shape.fill()
                }
            }
        }
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
