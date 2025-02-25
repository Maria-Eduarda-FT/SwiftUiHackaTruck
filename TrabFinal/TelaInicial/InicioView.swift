//
//  InicioView.swift
//  TelaInicial
//
//  Created by Turma01-21 on 25/02/25.
//

import SwiftUI

struct Noticia: Hashable{
    //let id = UUID()
    let titulo : String
    let texto : String
}

struct InicioView: View {
    
    var noticias : [Noticia] =  [
        Noticia(titulo: "Noticia 1", texto: "Belo Horizonte é bonita"),  Noticia(titulo: "Noticia 2", texto: "Monte Carmelo é bonita")
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.azulCinza).ignoresSafeArea()
                VStack{
                    VStack{
                        Text("ProtozoAIro")
                            .font(.custom("PixelatedFont", size: 28))
                            .padding()
                        Spacer()
                        Image("mosquito")
                            .resizable()
                            .scaledToFit()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 200, height: 200)
                        Spacer()
                    }
                    VStack {
                        ForEach(noticias, id: \.self) { noticia in
                            Text(noticia.titulo)
                        }
                    }//vstack
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background().edgesIgnoringSafeArea(.bottom)
                }//vstackmain
            }//zstack
        }//navstack
    }
}

#Preview {
    InicioView()
}
