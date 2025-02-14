import SwiftUI

struct Modo3: View {
     // State to control sheet presentation
    var body: some View {
        ZStack{
            Color.azulEsc.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Sheet View")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
}

#Preview {
    Modo3()
}
