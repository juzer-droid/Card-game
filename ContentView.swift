//
//  ContentView.swift
//  Testapp
//
//  Created by Juzer Najmuddin on 09/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    //game start values of score and cards
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore  = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    //player card
                    Image(playerCard)
                    Spacer()
                    //CPU Card
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    
                    //generate random number between 2 to 14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    
                    //update cards and score
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    //update score
                    /*playerScore += 1
                    cpuScore += 1*/
                    if (playerRandom > cpuRandom)
                    {
                        playerScore += 1
                    }
                    else if (cpuRandom > playerRandom)
                    {
                        cpuScore += 1
                    }
                    else if (playerRandom == cpuRandom)
                    {
                        playerScore += 1
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        //Player Score
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        //CPU Score
                        Text("CPU")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
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
