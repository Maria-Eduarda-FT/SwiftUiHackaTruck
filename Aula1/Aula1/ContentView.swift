//  ContentView.swift
//  Aula1
//  Created by Turma01-21 on 06/02/25.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .position(x:35, y:10)
                Rectangle()
                    .fill(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .position(x:142, y:10)
            }
            HStack{}
                .padding(330)
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .position(x:35, y:10)
                
                Rectangle()
                    .fill(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .position(x:142, y:10)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
