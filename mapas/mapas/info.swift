import SwiftUI

struct info: View {

    @State var mostra : Local
    
    var body: some View {
        
        ZStack{
            Image("_").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).blur(radius: 3)
           // Rectangle().background(RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial))
            VStack{
                Image(mostra.foto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 300)
                
                Text(mostra.nome)
                    .font(.title)
                Text(mostra.desc)
            }
            
        }
        
    }
}

#Preview {
    info(mostra : Local(latitude: -14.987, longitude: -15.8765, nome: "x", foto: "bh", desc: "x"))
}
