import SwiftUI

struct Tela: View {
    
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
                    Text("Volte, " + username + sobrenome).foregroundColor(.white)
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
    Tela(username: .constant(""), sobrenome: .constant(""))
}
