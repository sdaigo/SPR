//
//  ContentView.swift
//  SPR
//
//  Created by shitara on 2021/06/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var answer: Int = 0
    
    var body: some View {
        VStack {
            Spacer()

            if answer == 0 {
                Text("じゃんけんをします")
                    .padding(.bottom)
            } else if answer == 1 {
                Image("gu")
                    .resizable() // resize
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answer == 2 {
                Image("choki")
                    .resizable() // resize
                    .aspectRatio(contentMode: .fit) // fit to screen
                    .frame(width: 200, height: 200)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
                    .resizable() // resize
                    .aspectRatio(contentMode: .fit) // fit to screen
                    .frame(width: 200, height: 200)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
                        
            Button(action: {
                // avoid same result from previous answer
                var newAnswer = 0
                
                repeat {
                    newAnswer = Int.random(in: 1...3)
                } while answer == newAnswer
                
                answer = newAnswer
            }) {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity) // screen width
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
