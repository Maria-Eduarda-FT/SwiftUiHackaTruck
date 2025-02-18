import SwiftUI

struct entradaa: View {
    @State var aux: Int?
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    HStack{
                        NavigationLink(destination: ContentView( casa: House(Foto: "grifnoria", Cor: .red, name: "Gryffindor"))){
                            Image("grifnoria")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 150, height: 150)
                        }
                        NavigationLink(destination: ContentView( casa: House (Foto: "sonserina", Cor: .green, name: "Slytherin"))){
                            Image("sonserina")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 300)
                        }
                    }//hstack
                    HStack{
                        NavigationLink(destination: ContentView( casa: House(Foto: "lufalufa", Cor: .yellow, name: "Hufflepuff"))){
                            Image("lufalufa")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 150, height: 200)
                        }//navlink
                        NavigationLink(destination: ContentView( casa: House(Foto: "corvinal", Cor: .blue, name: "RavenClaw"))){
                            Image("corvinal")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 200)
                        }//navlink
                    }//hstack
                    .padding(.bottom, 50)
                }//vstack
                .background(Color(.brown))
                .frame(width: 300, height: 500)
                .cornerRadius(10)
            }//zstack
        }//nagigationstack
    }
}

#Preview {
    entradaa()
}
