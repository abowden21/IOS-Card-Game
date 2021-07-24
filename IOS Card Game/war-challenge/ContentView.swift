//
//  ContentView.swift
//  war-challenge
//
//  Created by User on 5/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        //background
        ZStack {
            
        Image("background").ignoresSafeArea()

            //assets
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                //cards
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                //Button
                Button(action: {
                    var playerCardValue = Int.random(in: 2...14)
                    var cpuCardValue = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerCardValue)
                    cpuCard = "card" + String(cpuCardValue)
                    
                    if playerCardValue > cpuCardValue {
                        playerScore += 1
                    }
                    else if cpuCardValue > playerCardValue {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                //scoreboard
                HStack {
                    Spacer()
                    //player1
                    VStack {
                        Text("Player").font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        
                    }.foregroundColor(.white)
                    
                    Spacer()
                    //player2
                    VStack {
                        Text("CPU").font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        
                    }.foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
            }
      
        
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
