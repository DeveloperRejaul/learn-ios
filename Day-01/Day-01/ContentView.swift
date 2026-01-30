//
//  ContentView.swift
//  Day-01
//
//  Created by Rezaul on 30/1/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            // Card container with background, corner radius, and shadow
            VStack(alignment: .leading, spacing: 10) {
                Image("card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)

                HStack{
                    Text("Niagara Falls").bold().font(.title)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 480)")
                    }
                    .foregroundColor(.yellow)
                    .font(.caption)
                }
                Text("Come vesite for an expariance of a lifetime")
                HStack{
                    Spacer()
                    Image(systemName: "camera")
                    Image(systemName: "web.camera.fill")
                }
                .foregroundColor(.gray)
            }
            .padding()
            .background(){
                Rectangle().foregroundStyle(.white).cornerRadius(10).shadow(radius: 10)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
