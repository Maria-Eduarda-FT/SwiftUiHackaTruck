import SwiftUI


struct ContentView: View {
    
    @State private var username: String = ""
    @State private var sobrenome: String = ""
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.azulEsc.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                   Spacer()
                    VStack{
                        NavigationLink(destination: Modo1(username: $username, sobrenome: $sobrenome)){Text("Modo 1")}
                        // .padding(20)
                            .frame(width: 300, height: 100)
                            .foregroundColor(.white)
                            .background(Color.rosinha)
                            .cornerRadius(10)
                        NavigationLink(destination: Modo2(username: $username, sobrenome: $sobrenome)){Text("Modo 2")}
                            .frame(width: 300, height: 100)
                            .foregroundColor(.white)
                            .background(Color.rosinha)
                            .cornerRadius(10)
                        Button("Show Sheet") {
                            showingSheet.toggle()
                                    }
                        .frame(width: 300, height: 100)
                        .background(Color.rosinha)
                        .cornerRadius(10)
                    }//vstack dos butoes
                    .sheet(isPresented: $showingSheet, content: {
                        Modo3()
                    })
                }//vstack geral
                .padding(30)
            }//zstack
        }//navstack
        .accentColor(.white)
    }
}

#Preview {
    ContentView()
}
