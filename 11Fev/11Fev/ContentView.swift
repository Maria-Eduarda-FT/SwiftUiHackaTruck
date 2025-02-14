import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            rosaView()
                .tabItem {
                Label("Rosa", systemImage: "paintbrush.fill")
            }
            azulView()
                .tabItem { Label("Azul", systemImage: "paintbrush.pointed.fill") }
            cinzaView()
                .tabItem { Label("Cinza", systemImage: "paintpalette.fill") }
            listView()
                .tabItem { Label("Lista", systemImage: "list.bullet") }
        }//tabview
    }//some view
}// content view

#Preview {
    ContentView()
}

