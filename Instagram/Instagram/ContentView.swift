import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("username")
                .bold()
                .padding(15)
            Spacer()
            Image(systemName: "arrow.clockwise")
                .foregroundColor(.gray)
            Image(systemName: "slider.horizontal.3")
                .foregroundColor(.gray)
                .padding(10)
        }
        VStack{ // info + bibliografia
            HStack{ // foto e seguidores
                ZStack{
                    Image("Gato")
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                    Image(systemName: "plus.circle.fill")
                        .offset(x:35, y:40)
                        .font(.title2)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                                .bold()
                            Text("Posts")
                        }
                        VStack{
                            Text("12K")
                                .bold()
                            Text("Seguidores")
                        }
                        VStack{
                            Text("800")
                                .bold()
                            Text("Seguindo")
                        }
                    }
                    HStack{
                        Button(action: {}, label: {
                            Text("Editar Perfil")
                                .frame(width: 180, height: 10)
                        })
                        .padding()
                        .buttonStyle(.borderedProminent)
                        .tint(.gray)
                        .clipShape(Rectangle())
                        .foregroundColor(.black)
                    }
                }
            }
            VStack(alignment: .leading, content: {
                    Text("Nome Sobrenome")
                        .font(.headline)
                    Text("Biografia do Perfil do Instagram")
            })
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(10)
        }
        HStack{// antes das fotos
            Image(systemName: "rectangle.split.3x3")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            Image(systemName: "play.square.stack")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            Image(systemName: "person.crop.circle.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45,alignment: .center)
        .border(Color(.lightGray))
        VStack{ // das fotos
            HStack{ // 1 linha
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
            }
            HStack{ // 2 linha
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
            }
            HStack{ // 3 linha
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
                VStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 125, height: 125)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
