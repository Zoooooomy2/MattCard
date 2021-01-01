//
//  InfoView.swift
//  MattCard
//
//  Created by Matt Nutt on 31/12/2020.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 60, alignment: .center)
            .foregroundColor(.white)
            .overlay(
                HStack(content: {
                    Image(systemName: imageName)
                        .foregroundColor(color)
                    Text(text)
                        .foregroundColor(.black)
                })
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill", color: .green)
            .previewLayout(.sizeThatFits)
    }
}
