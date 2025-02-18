import SwiftUI

struct ContentView: View {
    
    @StateObject var dados = BaixaDados()
    
    var casa: House
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(casa.Cor!), .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                ZStack{
                    Image("biblioteca")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400,height: 200)
                        .padding(.bottom, 120)
                        .opacity(0.5)
                   Image(casa.Foto!)
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 200, height: 200)
                        
                }
                VStack {
                    
                    ForEach(dados.personagem){ i in
                        HStack{
                            AsyncImage(url: URL (string: i.image ?? "")) {image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 70, height: 70)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            } placeholder: {
                                ProgressView().frame(width: 70, height: 70)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            }
                            Text(i.name ?? "Desconhecido")
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.leading, 20)
                    }//foreach
                    
                }
            }//scrollview
        }.onAppear(){
            dados.fetch(house: casa.name)
        }
        
    }
}

#Preview {
    ContentView(casa: House(Foto: "grifnoria", Cor: .red, name: "Gryffindor"))
}
