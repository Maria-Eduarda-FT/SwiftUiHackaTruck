//  Desafio2.swift
//  Aula1
//  Created by Turma01-21 on 06/02/25.

import SwiftUI

struct Desafio2: View {
    var body: some View {
        HStack{
            Image("Gato")
                .resizable()
                .frame(width:150 ,height: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack{}
                .padding(13)
            VStack{
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regioes do BR")
            }
        }
    }
}

#Preview {
    Desafio2()
}
