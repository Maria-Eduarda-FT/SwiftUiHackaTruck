import SwiftUI

struct rosaView: View {
    var body: some View {
        ZStack{
            VStack{
                Color.pink.edgesIgnoringSafeArea(.top)
                
            }
            Image(systemName: "paintbrush")
                .resizable()
                .scaledToFit()
                .padding(40)
                .frame(width: 350, height: 350)
                .foregroundColor(.pink)
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }//zstack
    }
}

#Preview {
    rosaView()
}
