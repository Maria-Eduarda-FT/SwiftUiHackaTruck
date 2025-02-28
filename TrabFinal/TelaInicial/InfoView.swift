import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoId: String
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}

struct InfoView: View {
    @State var id = "9LhfL3Dg_lA"
    var body: some View {
        ZStack{
            VStack{
                VStack {
                    ZStack {
                        Color.azulCinza.edgesIgnoringSafeArea(.all)
                        Text("ProtozoAIro")
                            .font(.system(size: 34, weight: .regular, design: .monospaced))
                            .font(.title)
                            .bold()
                            .padding()
                            .offset(y: -50)
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 210, height: 210)
                            .offset(CGSize(width: 0, height: 120.0))
                    }
                    .frame(height: 200)
                }
                Spacer()
                VStack{
                        Text("Maneiras de Combater a Malária...")
                        .font(.title2)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(10)
                    HStack{
                        Image(systemName: "ant")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 70)
                            .padding(10)
                        
                            Text("As principais medidas de prevenção da malária são o uso de mosquiteiros, roupas que protejam pernas e braços, telas em portas e janelas e uso de repelentes.")
                            .padding(10)
                    }.background(Color(.azulEscuro)).cornerRadius(15)
                }.padding()
                Spacer()
                YouTubeView(videoId: id)
                    .cornerRadius(15)
                    .frame(width: 350, height: 250)
                    .padding()
                Spacer()
                
            }
        }
    }
}

#Preview {
    InfoView()
}
