//
//  ContentView.swift
//  Teste Z stack
//
//  Created by Turma01-21 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var Variavel = false
    var body: some View {
        ZStack {
            Image("MuchaTseBle")
                .resizable()
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack{
                Text("Bem vindo, " + name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                TextField("",text: $name, prompt: Text("Enter your name").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
                    .frame(width: 250, height: 40)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 100)
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 100)
                Spacer()

                HStack{//butao
                    Button(action:{Variavel=true}, label: {
                        Text("Entrar")
                    })
                    .font(.title2)
                   // .alert(isPresented: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is Presented@*/.constant(false)/*@END_MENU_TOKEN@*/, content: {/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Alert(title: Text("Alert"))/*@END_MENU_TOKEN@*/})
                }
            }.padding() // Vstack main
        }
    }
}

#Preview {
    ContentView()
}
