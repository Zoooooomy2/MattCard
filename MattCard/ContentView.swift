//
//  ContentView.swift
//  MattCard
//
//  Created by Matt Nutt on 27/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color(red: 0.5, green: 0.1, blue: 0.17)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("matt")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Matt Nutt")
                    .font(Font.custom("Redressed", size: 60))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Raleway", size: 20))
                Divider()
                InfoView(text: "+44 7935 872416", imageName: "phone.fill", color: .green)
                InfoView(text: "matt@theappcave.uk", imageName: "envelope.fill", color: .blue)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


