import SwiftUI
import MapKit

struct Local: Hashable{
    //let id = UUID()
    let latitude : Double
    let longitude : Double
    let nome : String
    let foto : String
    let desc : String
}

struct ContentView: View {
    var cidades : [Local] =  [
        Local(latitude: -19.924557, longitude: -43.991597, nome: "Belo Horizonte", foto: "bh", desc: "Belo Horizonte é bonita"), Local(latitude: -16.665136, longitude: -49.286041, nome: "Goiânia", foto: "goiania", desc: "Goiânia é um município brasileiro, capital do estado de Goiás. Fica a 209 km de Brasília, a capital do Brasil. Com uma área de aproximadamente 728,296 km², possui uma geografia contínua, com poucos morros e baixadas, caracterizada por ser uma região do Planalto Central do Brasil. É formada por dois núcleos urbanos: o distrito-sede e o distrito de Vila Rica."), Local(latitude: -9.974, longitude: -67.8076, nome: "Acre", foto: "acre", desc: "Acre é bonita"), Local(latitude: -3.117034, longitude: -60.025780, nome: "Manaus", foto: "manaus", desc: "Manaus é bonita")
    ]
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), span: MKCoordinateSpan(latitudeDelta: 30 , longitudeDelta: 30))
    )
    @State var indef : Local =  Local(latitude: -19.924557, longitude: -43.991597, nome: "Belo Horizonte", foto: "https://b3577058.smushcdn.com/3577058/wp-content/uploads/2023/01/Morar-em-Belo-Horizonte-720x511.jpg?lossy=1&strip=0&webp=1", desc: "Belo Horizonte é bonita")
    @State var aux : Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Map (position: $position){
                    ForEach(cidades, id: \.self) { cidade in
                        
                        Annotation(cidade.nome, coordinate: CLLocationCoordinate2D(latitude: cidade.latitude, longitude: cidade.longitude)){
                            NavigationLink(destination: info(mostra : cidade)){
                                if aux == true && cidade == indef{
                                    Image(systemName: "scope")
                                }
                            }//navlink
                        }//annotation
                        //foreach
                    }//map
                }
                .ignoresSafeArea()
                VStack{
                    Picker("oi ", selection: $indef) {
                        ForEach(cidades, id: \.self) { cidade in
                            Text(cidade.nome)
                        }
                    }//picker
                    .accentColor(.white)
                    .frame(width: 250, height: 50)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.ultraThinMaterial))
                    .onChange(of: indef) {
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: indef.latitude, longitude: indef.longitude), span: MKCoordinateSpan(latitudeDelta: 30 , longitudeDelta: 30)))
                        aux = true
                    }
                    
                    // Text(indef.latitude)
                    Spacer()
                }//vstack
                
                
            }//zstack
        }//navstack
    }
}

#Preview {
    ContentView()
}
