import SwiftUI

struct azulView: View {
    var body: some View {
        ZStack{
            VStack{
                Color.blue.edgesIgnoringSafeArea(.top)
                
            }
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 350, height: 350)
                .foregroundColor(.blue)
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }//zstack
    }
}

#Preview {
    azulView()
}
