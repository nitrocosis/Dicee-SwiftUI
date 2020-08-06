//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Sarah Rebecca Estrellado on 8/6/20.
//  Copyright © 2020 Sarah Rebecca Estrellado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("diceeLogo")
                    .padding(.top)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNum)
                    DiceView(n: rightDiceNum)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                }
                .background(Color.red)
                .padding(.bottom)
                
            }
            
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
}
