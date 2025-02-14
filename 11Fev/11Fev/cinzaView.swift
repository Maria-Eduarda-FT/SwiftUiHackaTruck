//
//  cinzaView.swift
//  11Fev
//
//  Created by Turma01-21 on 11/02/25.
//

import SwiftUI

struct cinzaView: View {
    var body: some View {
        ZStack{
            VStack{
                Color.gray.edgesIgnoringSafeArea(.top)
                
            }
            Image(systemName: "paintpalette")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 350, height: 350)
                .foregroundColor(.gray)
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }//zstack
    }
}

#Preview {
    cinzaView()
}
