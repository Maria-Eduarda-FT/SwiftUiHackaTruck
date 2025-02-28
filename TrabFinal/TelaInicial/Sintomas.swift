//
//  Sintomas.swift
//  TelaInicial
//
//  Created by Turma01-21 on 28/02/25.
//

import SwiftUI

struct Sintomas: View {
    var body: some View {
        ZStack{
            VStack{
                ZStack {
                    Color.azulCinza.edgesIgnoringSafeArea(.all)
                    Text("ProtozoAIro")
                        .font(.system(size: 34, weight: .regular, design: .monospaced))
                        .font(.title)
                        .bold()
                        .padding()
                        .offset(y: -50)
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 210, height: 210)
                        .offset(CGSize(width: 0, height: 120.0))
                    
                }//zstack inner
                .frame(height: 200)
                VStack{
                    Image(systemName: "cross.case")
                        .scaledToFit()
                        .font(.system(size: 65))
                        
                    Text("Alguns Sintomas...")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(10)
                    Spacer()
                    HStack{
                        Image(systemName: "medical.thermometer.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 70)
                            .padding(10)
                        VStack{
                            Text("Febre e Calafrios são sintomas comuns da malária, causada pelo parasita *Plasmodium*.")
                        }
                    }.background(Color(.verdeDif)).cornerRadius(15)
                    Spacer()
                    HStack{
                        Text("Suar Frio e sudorese também pode ser uma característica da doença.")
                            .padding(10)
                        Image("suarFrio")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }.background(Color(.amareloDif)).cornerRadius(15)
                    Spacer()
                    HStack{
                        Image("homem")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .padding(10)
                            Text("Há pessoas que, antes de apresentarem tais manifestações, sentem náuseas, vômitos, cansaço e falta de apetite.")
                                .padding(10)
                    }.background(Color(.azulEscuro)).cornerRadius(15)

                    Spacer()
                   
                }.padding(.top).offset(CGSize(width: 0, height: -60))
                    .padding()
            }//vstack
        }//zstack out
    }
    
}

#Preview {
    Sintomas()
}
