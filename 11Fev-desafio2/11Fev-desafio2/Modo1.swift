import SwiftUI

struct Modo1: View {
    
    @Binding  var username: String
    @Binding  var sobrenome: String

    var body: some View {
        ZStack{
            Color.azulEsc.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                VStack{
                    TextField("", text: $username, prompt: Text("Nome: ").foregroundColor(.white))
                    TextField("", text: $sobrenome, prompt: Text("Sobrenome: ").foregroundColor(.white))
                }
                .frame(width: 300, height: 150)
                .background(Color.rosinha)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .cornerRadius(10)
                Spacer()
            }
        }//zstack
    }
}

#Preview {
    Modo1(username: .constant(""), sobrenome: .constant(""))
}
