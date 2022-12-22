//
//  ContentView.swift
//  War Card
//
//  Created by Jeevan Chandra Joshi on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundImage = "background-plain"
    @State var playerCard = "back"
    @State var botCard = "back"
    @State var playerScore = 0
    @State var botScore = 0

    var body: some View {
        ZStack {
            Image(backgroundImage).resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(botCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRand = Int.random(in: 2 ... 14)
                    let botRand = Int.random(in: 2 ... 14)
                    playerCard = "card\(playerRand)"
                    botCard = "card\(botRand)"
                    if playerRand > botRand {
                        playerScore += 1
                    } else if botRand > playerRand {
                        botScore += 1
                    }
                } label: {
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("Bot").font(.headline).padding(.bottom, 10)
                        Text(String(botScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                HStack {
                    Button {
                        backgroundImage = "background-plain"
                    } label: {
                        Image("background-plain").resizable().cornerRadius(20)
                    }
                    Button {
                        backgroundImage = "background-cloth"
                    } label: {
                        Image("background-cloth").resizable().cornerRadius(20)
                    }
                    Button {
                        backgroundImage = "background-wood-cartoon"
                    } label: {
                        Image("background-wood-cartoon").resizable().cornerRadius(20)
                    }
                    Button {
                        backgroundImage = "background-wood-grain"
                    } label: {
                        Image("background-wood-grain").resizable().cornerRadius(20)
                    }
                }.frame(height: 100).padding(10).shadow(radius: 100)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
