import SwiftUI

struct listView: View {
    var body: some View {
        List {
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintbrush")
            }
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintbrush.pointed")
            }
            HStack{
                Text("Item")
                Spacer()
                Image(systemName: "paintpalette")
            }
        }//list
        
    }
}

#Preview {
    listView()
}
