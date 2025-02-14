import SwiftUI

struct musica : Identifiable{
    var id  = UUID()
    var album: String
    var nome: String
    var artista: String
}

struct ContentView: View {
    
    var musicas = [musica(album: "miley", nome: "Angels Like You", artista: "Miley Cyrus"), musica(album: "belixe", nome: "Birds of a Feather", artista: "Billie Eilish"), musica(album: "m83", nome: "Outro", artista: "M83"), musica(album: "Parachutes", nome: "Sparks", artista: "Coldplay"), musica(album: "Babymetalcover", nome: "BABYMETAL DEATH", artista: "BABYMETAL"), musica(album: "rita", nome: "Mania De Você", artista: "Rita Lee"), musica(album: "currents", nome: "Let it Happen", artista: "Tame Impala"), musica(album: "submundo", nome: "SOCA SOCA DO SUBMUNDO", artista: "Dj GBR, Victor Lou")]
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    VStack {
                        Image(systemName: "play.square.stack.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.purple)
                            .frame(width: 200, height: 200)
                            .padding(35)
                            .background(Color.black.gradient)
                        Text("Hacka FM")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        
                        VStack{
                            ForEach(musicas) { musica in
                                NavigationLink(destination: tocar(tocando: musica)){
                                    HStack{
                                        Image(musica.album)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                        VStack{
                                            Text(musica.nome)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .foregroundColor(.white)
                                            Text(musica.artista)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .foregroundColor(.white)
                                        }//vstack
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }//hstck
                                }//navigation link
                            }//foreach
                        }//vstack
                        
                        Text("Sugeridos")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(musicas) { musica in
                                    VStack{
                                        Image(musica.album)
                                            .resizable().scaledToFit().frame(width: 100, height: 100)
                                            .cornerRadius(10)
                                        Text(musica.artista)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    }
                                }//foreach
                            }//hstack
                            .padding(.horizontal)
                        }//scrollview horiz
                    }
                    .padding()
                }//scrollview
                .background(
                    LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .top, endPoint: .bottom)
                )
            }//zstack
        }//navigation
        .accentColor(.white)
    }
}

#Preview {
    ContentView()
}
