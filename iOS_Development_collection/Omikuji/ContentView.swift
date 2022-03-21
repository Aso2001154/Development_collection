//
//  ContentView.swift
//  Omikuji
//
//  Created by 木山涼太 on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            if answerNumber == 0 {
                Text("これからおみくじを引きます！！")
                    .padding(.bottom)
            }else if answerNumber == 1 {
                Image("大吉")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("大吉")
                    .padding(.bottom)
            }else if answerNumber == 2 {
                Image("末吉")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                Text("末吉")
                    .padding(.bottom)
            }else {
                Image("凶")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("凶")
                    .padding(.bottom)
            }
            
            
            
            Button(action: {
                var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            }) {
                Text("おみくじをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
