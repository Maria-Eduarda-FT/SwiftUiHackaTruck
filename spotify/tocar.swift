import SwiftUI

struct tocar: View {
    @State var tocando : musica
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                Spacer()
                Image(tocando.album)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 300)
                Text(tocando.nome)
                    .foregroundColor(.white)
                Text(tocando.artista)
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")

                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                Spacer()
            }//vstack
            
        }
        
        
    }
    
}

#Preview {
    tocar(tocando: musica(album: "x", nome: "s", artista: "nx"))
}
