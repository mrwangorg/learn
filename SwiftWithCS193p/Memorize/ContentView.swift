//
//  ContentView.swift
//  Memorize
//
//  Created by Aaron on 6/1/21.
//

import SwiftUI

// 'Behave' like a View
struct ContentView: View {
    var flags = ["🇹🇼","🏳️‍🌈","🇮🇸","🇫🇮","🇫🇷","🇵🇫",
                 "🇮🇳","🇬🇾","🇰🇮","🇱🇷","🇱🇾","🇱🇹",
                 "🇱🇺","🇫🇯","🇹🇫","🇮🇲","🇧🇪","🇦🇬",
                 "🇧🇴","🇧🇹","🇻🇬","🇧🇷","🇧🇦","🇨🇫"]
    @State var flagCount = 12
    
    // body's type is SOME OTHER VIEW
    var body: some View {
        
        // Vertical Stack
        VStack{
            
            // Horizontal Stack
            // View Combiner
            
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 64))]) {
                    
                    //Behave like an identifiable -> \.self
                    ForEach(flags[0..<flagCount], id: \.self, content: { flag in
                        CardView(content: flag)
                            .aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            .foregroundColor(.red)
            
            //fill with space
            Spacer()
            
            HStack {
                
                // all individual parts
                Remove
                Spacer()
                Add
            }
        
        
            .padding(.horizontal).font(.largeTitle)
            // calling function on the View
        }
        .padding(.horizontal)
}
    
    var Remove: some View{
        Button(action: {
            if flagCount > 1 {
                flagCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    
    var Add: some View{
        Button {
            if flagCount < flags.count {
                flagCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                if isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
            .onTapGesture {
                isFaceUp = !isFaceUp
                
            }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
