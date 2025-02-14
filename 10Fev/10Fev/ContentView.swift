import SwiftUI

struct ContentView: View {
    
    @State private var distancia: Double = 0.0
    @State private var tempo: Double = 0.0
    @State var km = 0.0
    
    var body: some View {
        VStack{
            VStack (alignment: .center){
                Text("Digite Distancia (Km)")
                TextField("", value: $distancia, format: .number, prompt: Text("Ex: 1267"))                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .frame(width: 200, height: 30)
                    .cornerRadius(50)
                Text("Digite o tempo (h)")
                TextField("", value: $tempo, format: .number, prompt: Text("Ex: 3"))
                    .background(Color.white)
                    .frame(width: 200, height: 30)
                    .multilineTextAlignment(.center)
                    .cornerRadius(50)
            } // textos iniciais
            ZStack{
                VStack{
                    Button("Calcular") {
                        km  = distancia / tempo
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.laranjaClaro)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.title3)
                    
                    Text("\(km, specifier: "%.2f") km/h")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    if(km > 0 && km < 10){
                        Image("jabuti")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else if(km > 9.9 && km < 30){
                        Image("elefante")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else if(km > 29.9 && km < 70){
                        Image("avestruz")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else if (km > 69.9 && km < 90){
                        Image("leao")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else if (km > 89.9 && km < 130){
                        Image("guepardo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else if (km >= 130){
                        Image("Gato")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    } else{
                        Image("interrogacao")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 290)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    }
                }//termina v
            }//termiza z
            Spacer()
            VStack{
                HStack{
                    Text ("Tartaruga (0 - 9.9km/h)")
                    Spacer()
                    Circle()
                        .fill(Color.verdeClaro)
                        .frame(width: 20, height: 20)
                }
                HStack{
                    Text ("Elefante (10 - 29.9km/h)")
                    Spacer()
                    Circle()
                        .fill(Color.azulClaro)
                        .frame(width: 20, height: 20)
                }
                HStack{
                    Text ("Avestruz (30 - 69.9km/h)")
                    Spacer()
                    Circle()
                        .fill(Color.laranjaClaro)
                        .frame(width: 20, height: 20)
                }
                HStack{
                    Text ("Leão (70 - 89.9km/h)")
                    Spacer()
                    Circle()
                        .fill(Color.amareloClaro)
                        .frame(width: 20, height: 20)
                }
                HStack{
                    Text ("Guepardo (90 - 130km/h)")
                    Spacer()
                    Circle()
                        .fill(Color.vermelhoClaro)
                        .frame(width: 20, height: 20)
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(10)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color.gray)
    

    }//someview
}//content

#Preview {
    ContentView()
}
