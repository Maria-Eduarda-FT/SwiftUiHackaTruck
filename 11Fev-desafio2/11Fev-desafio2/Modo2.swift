import SwiftUI

struct Modo2: View {
    
    @Binding  var username: String 
    @Binding  var sobrenome: String
    
    var body: some View {
        ZStack{
            Color.azulEsc.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Modo 2")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                VStack{
                    Text("Bem Vindo, " + username + sobrenome).foregroundColor(.white)
                    NavigationLink(destination: Tela(username: $username, sobrenome: $sobrenome)){Text("Acessar Tela")}
                        .frame(width: 300, height: 100)
                        .foregroundColor(.white)
                        .background(Color.rosinha)
                        .cornerRadius(10)
                }
                .frame(width: 300, height: 150)
                .background(Color.rosinha)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .cornerRadius(10)
                Spacer()
            }
        }    }
}

#Preview {
    Modo2(username: .constant(""), sobrenome: .constant(""))
}
