//
//  ContentView.swift
//  Day-02
//
//  Created by Rezaul on 30/1/26.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card11"
    @State var cpuCard = "card9"
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{
                    handleCardPoint()
                }label:{
                    Image("button")
                }
               
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing:10){
                        Text("Player")
                        Text(String(playerScore)).font(.headline.bold())
                    }
                    Spacer()
                    VStack(spacing:10){
                        Text("CPU")
                        Text(String(cpuScore)).font(.headline.bold())
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                
            }
            .padding()
        }

    }
    
    func handleCardPoint () {
       // Player card
        let rPlayerNumber = Int.random(in:2...14)
       playerCard = "card" + String(rPlayerNumber)
       
       // cpu card
       let rCPUCardNumber = Int.random(in:2...14)
        cpuCard = "card" + String(rCPUCardNumber)
        
       // calculate
        if rPlayerNumber > rCPUCardNumber {
            playerScore += 1
        }
        else if rCPUCardNumber >  rPlayerNumber {
            cpuScore += 1
        }
        else {
            playerScore += 1
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
