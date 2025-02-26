//
//  InicioView.swift
//  TelaInicial
//
//  Created by Turma01-21 on 25/02/25.
//

import SwiftUI
import WebKit

struct GifImageView: UIViewRepresentable {
    private let name: String
    init(_ name: String) {
        self.name = name
    }
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webview.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        return webview
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

struct Noticia: Hashable{
    //let id = UUID()
    let titulo : String
    let texto : String
}

struct InicioView: View {
    @State private var mata = false
    var noticias : [Noticia] =  [
        Noticia(titulo: "Noticia 1", texto: "Belo Horizonte é bonita"),  Noticia(titulo: "Noticia 2", texto: "Monte Carmelo é bonita")
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.azulCinza).ignoresSafeArea()
                VStack{
                    VStack {
                        ZStack {
                            Color.azulCinza.edgesIgnoringSafeArea(.all)
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 210, height: 210)
                                .offset(CGSize(width: 0, height: 120.0))
                            
                            if (!mata){
                                GifImageView("gifMosquito")
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 190, height: 190)
                                    .offset(CGSize(width: 0, height: 120.0))
                                    .onTapGesture {
                                        mata = true
                                    }
                            }else {
                                Image("morto")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 250, height: 250)
                                    .offset(CGSize(width: 0, height: 120.0))
                                
                            }
                        }//zstack inner
                        .frame(height: 200)
                    }//vstack cima
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    VStack {
                        VStack{
                            if let randomNoticia = noticias.randomElement(){
                                Text("\(randomNoticia.titulo)").font(.title).padding().foregroundColor(.white)
                                Text("\(randomNoticia.texto)").foregroundColor(.white)
                            }//if
                        }//vstackdentro
                        .padding()
                        .background(Color(.azulCinza))
                        .cornerRadius(15)
                    }//vstack baixo
                    .frame(maxWidth: .infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity)
                    .background().edgesIgnoringSafeArea(.bottom)
                    
                }//vstackmain
            }//zstack
        }//navstack
    }
}

#Preview {
    InicioView()
}
