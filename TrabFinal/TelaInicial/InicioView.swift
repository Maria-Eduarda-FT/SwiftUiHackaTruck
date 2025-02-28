//
//  InicioView.swift
//  TelaInicial
//
//  Created by Turma01-21 on 25/02/25.
//

import SwiftUI
import WebKit

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct GifImageView: UIViewRepresentable {
    private let name: String
    init(_ name: String) {
        self.name = name
    }
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        webview.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        return webview
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

struct Noticia: Hashable{
    //let id = UUID()
    let titulo : String
    let texto : String
}

struct InicioView: View {
    @State private var mata = false
    @State private var showingSheet1 = false
    @State private var showingSheet2 = false
    @State private var showingSheet3 = false
    
    var noticias : [Noticia] =  [
        Noticia(titulo: "Você sabia?", texto: "A malária é causada por parasitas do gênero Plasmodium, que são transmitidos ao ser humano pela picada de mosquitos infectados do gênero Anopheles."),
        Noticia(titulo: "Você sabia?", texto: "A malária tem sido conhecida desde a antiguidade. O termo 'malária' vem do italiano 'mala aria', que significa 'ar ruim', porque os antigos acreditavam que a doença era causada pelo ar de pântanos e áreas alagadas."),
        Noticia(titulo: "Você sabia?", texto: "O ciclo de vida do parasita da malária é complexo, envolvendo tanto o mosquito quanto o ser humano. Dentro do corpo humano, o parasita passa por várias fases, começando no fígado e depois invadindo as células vermelhas do sangue."),
        Noticia(titulo: "Você sabia?", texto: "Os sintomas clássicos da malária incluem febre, calafrios, suores, dor de cabeça e cansaço. A febre pode ocorrer em ciclos, o que é uma característica distintiva da doença."),
        Noticia(titulo: "Você sabia?", texto: "Alguns indivíduos, especialmente aqueles com ascendência africana, possuem uma resistência genética à malária devido à presença da siclemia (anemia falciforme), que pode dificultar a sobrevivência do parasita dentro das células sanguíneas."),
        Noticia(titulo: "Você sabia?", texto: "Alguns estudos sugerem que elefantes africanos podem ser uma fonte natural do parasita da malária para os mosquitos Anopheles, embora as evidências ainda sejam inconclusivas."),
        Noticia(titulo: "Você sabia?", texto: "O uso de mosquiteiros tratados com inseticidas e medicamentos profiláticos são formas comuns de prevenção. Além disso, a eliminação de criadouros de mosquitos (como poças de água) é essencial para controlar a propagação da malária."),
        Noticia(titulo: "Você sabia?", texto: "A malária continua a ser uma das doenças mais prevalentes em várias regiões tropicais e subtropicais do mundo, especialmente na África Subsaariana. Em 2021, mais de 200 milhões de casos e cerca de 600 mil mortes por malária foram registradas mundialmente."),
        Noticia(titulo: "Você sabia?", texto: "Em 2021, foi aprovada a primeira vacina contra a malária, chamada RTS,S/AS01 (Mosquirix), desenvolvida pela GlaxoSmithKline, embora seu efeito não seja 100% eficaz, é um passo importante para o controle da doença."),
        Noticia(titulo: "Você sabia?", texto: "O parasita da malária ataca não só as células sanguíneas, mas também pode causar danos ao fígado, o que pode levar a complicações graves, como a insuficiência hepática."),
        Noticia(titulo: "Você sabia?", texto: "Embora a malária seja conhecida principalmente como uma doença humana, ela também afeta outros animais, como macacos e aves. O parasita Plasmodium pode ser encontrado em várias espécies, mas é adaptado principalmente para o ser humano."),
        Noticia(titulo: "Você sabia?", texto: "Além da picada de mosquitos Anopheles, a malária pode ser transmitida por transfusões de sangue, uso compartilhado de agulhas contaminadas e de mãe para filho durante a gestação (transmissão congênita)."),
        Noticia(titulo: "Você sabia?", texto: "A malária é mais prevalente em áreas com clima quente e úmido, pois o mosquito Anopheles precisa de água estagnada para se reproduzir. A temperatura ideal para a reprodução dos mosquitos e o ciclo do parasita é entre 20ºC e 30ºC."),
        Noticia(titulo: "Você sabia?", texto: "As mudanças climáticas podem alterar o padrão de distribuição da malária. Regiões que antes eram mais frias e não favoreciam os mosquitos Anopheles agora estão se tornando mais vulneráveis ao aumento de casos, devido ao aquecimento global."),
        Noticia(titulo: "Você sabia?", texto: "Muitas pessoas infectadas pelo Plasmodium não apresentam sintomas, mas ainda assim podem transmitir a doença. Isso dificulta os esforços de erradicação, pois essas pessoas não sabem que estão infectadas."),
        Noticia(titulo: "Você sabia?", texto: "A malária foi uma das doenças mais temidas na Grécia antiga. O famoso médico Hipócrates escreveu sobre os sintomas da malária, descrevendo episódios de febre e calafrios, mas sem saber a causa exata da doença."),
        Noticia(titulo: "Você sabia?", texto: "Para combater a malária, cientistas têm explorado o uso de mosquitos geneticamente modificados. A ideia é criar mosquitos que sejam incapazes de transmitir o Plasmodium, ou que acabem com a população de mosquitos Anopheles ao passarem genes de esterilidade."),
        Noticia(titulo: "Você sabia?", texto: "Países como os Estados Unidos, Europa e Japão erradicaram a malária por meio de campanhas de controle de mosquitos, saneamento básico e uso de medicamentos. No entanto, ela continua sendo um problema sério em muitos países africanos, asiáticos e latino-americanos."),
        Noticia(titulo: "Você sabia?", texto: "Durante as grandes expedições, como a de David Livingstone na África, a malária foi uma das principais causas de morte entre os exploradores. Livingstone, famoso por suas viagens à África, morreu provavelmente devido à malária."),
        Noticia(titulo: "Você sabia?", texto: "Gestantes, especialmente aquelas em seu primeiro trimestre de gravidez, estão em risco aumentado de desenvolver malária grave, que pode afetar a saúde do feto e até resultar em aborto espontâneo ou parto prematuro. Crianças pequenas também estão entre os grupos mais vulneráveis à malária grave."),
        Noticia(titulo: "Você sabia?", texto: "A malária já foi retratada em filmes e documentários, como em 'O Fantasma da Malária', um documentário do século 20, que procurou aumentar a conscientização sobre a doença e as formas de combate."),
        Noticia(titulo: "Você sabia?", texto: "Em algumas culturas, sementes de abóbora (cucurbita pepo) têm sido usadas de forma tradicional como remédios caseiros contra a malária, devido a suas propriedades antimicrobianas. Porém, o uso dessas plantas não substitui os medicamentos comprovados."),
        Noticia(titulo: "Você sabia?", texto: "O Prêmio Nobel de Medicina de 1902 foi concedido a Ronald Ross, um médico britânico que descobriu que os mosquitos Anopheles são os vetores responsáveis pela transmissão da malária."),
        Noticia(titulo: "Você sabia?", texto: "A China foi certificada como livre da malária pela Organização Mundial da Saúde (OMS) em 2021, após décadas de esforços intensivos para erradicar a doença, incluindo o uso de medicamentos inovadores como a artemisinina, descoberta por Tu Youyou."),
        Noticia(titulo: "Você sabia?", texto: "O medicamento quinino, derivado da casca da árvore Cinchona, foi um dos primeiros tratamentos eficazes contra a malária e era amplamente utilizado desde o século XVII."),
        Noticia(titulo: "Você sabia?", texto: "A malária teve um grande impacto na história militar. Durante a Segunda Guerra Mundial, mais soldados morreram de malária do que em combate em algumas regiões do Pacífico e da África."),
        Noticia(titulo: "Você sabia?", texto: "Os primeiros mapas de distribuição da malária foram criados no início do século XX para ajudar a identificar áreas de alto risco e implementar medidas de controle."),
        Noticia(titulo: "Você sabia?", texto: "Algumas pesquisas sugerem que a malária pode ter influenciado a evolução genética dos humanos, promovendo a seleção de genes que oferecem resistência parcial à doença, como o traço falciforme e a deficiência de G6PD."),
        Noticia(titulo: "Você sabia?", texto: "O surto de malária na região do Canal do Panamá no início do século XX quase fez com que a construção do canal fosse abandonada. Apenas com grandes campanhas de controle de mosquitos foi possível concluir a obra."),
        Noticia(titulo: "Você sabia?", texto: "A descoberta da artemisinina, um dos principais compostos utilizados no tratamento da malária, rendeu o Prêmio Nobel de Medicina de 2015 para a cientista chinesa Tu Youyou."),
        Noticia(titulo: "Você sabia?", texto: "A eliminação global da malária é um desafio, pois o parasita pode desenvolver resistência a medicamentos e os mosquitos podem se adaptar aos inseticidas utilizados para seu controle."),
        Noticia(titulo: "Você sabia?", texto: "O nome científico do parasita mais letal da malária, Plasmodium falciparum, foi dado por Charles Louis Alphonse Laveran, um médico francês que ganhou o Prêmio Nobel de Medicina em 1907 por suas descobertas sobre protozoários causadores de doenças."),
        Noticia(titulo: "Você sabia?", texto: "Em alguns países, a liberação de peixes que se alimentam de larvas de mosquitos tem sido uma estratégia utilizada para reduzir a população de vetores da malária e controlar sua disseminação."),
        Noticia(titulo: "Você sabia?", texto: "Crianças com menos de cinco anos representam cerca de 80% das mortes por malária na África, tornando essa faixa etária a mais vulnerável à doença."),
        Noticia(titulo: "Você sabia?", texto: "A malária tem sido usada como referência cultural em diversas formas de arte, incluindo a literatura. Escritores como Joseph Conrad mencionaram a doença em suas obras para retratar as dificuldades enfrentadas por exploradores e colonizadores."),
        Noticia(titulo: "Você sabia?", texto: "A malária tem cinco espécies principais que afetam os humanos: Plasmodium falciparum, Plasmodium vivax, Plasmodium malariae, Plasmodium ovale e Plasmodium knowlesi, sendo esta última mais comum em macacos, mas capaz de infectar humanos."),
        Noticia(titulo: "Você sabia?", texto: "Em algumas regiões endêmicas, pessoas expostas repetidamente ao parasita da malária podem desenvolver uma certa imunidade parcial, o que reduz a gravidade dos sintomas, mas não impede completamente novas infecções."),
        Noticia(titulo: "Você sabia?", texto: "A estratégia global para a erradicação da malária inclui o uso de inteligência artificial e big data para prever surtos da doença e direcionar recursos para áreas de maior risco."),
        Noticia(titulo: "Você sabia?", texto: "A malária é uma das doenças que mais impactou o desenvolvimento econômico de regiões tropicais, pois reduz a produtividade da população e sobrecarrega os sistemas de saúde pública."),
        Noticia(titulo: "Você sabia?", texto: "Acredita-se que a malária tenha influenciado o desenvolvimento de certas práticas culturais, como a construção de casas elevadas em algumas regiões, para evitar a proximidade com mosquitos transmissores da doença."),
        Noticia(titulo: "Você sabia?", texto: "A malária tem um impacto significativo no turismo em áreas endêmicas, pois muitos viajantes evitam regiões onde o risco de infecção é alto, afetando a economia local."),
        Noticia(titulo: "Você sabia?", texto: "A terapia combinada com artemisinina (ACT) é atualmente o tratamento mais eficaz contra a malária causada pelo Plasmodium falciparum, ajudando a reduzir a resistência do parasita aos medicamentos.")
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.azulCinza).ignoresSafeArea()
                VStack{
                    VStack {
                        ZStack {
                            // Color.azulCinza.edgesIgnoringSafeArea(.all)
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
                            
                            if (!mata){
                                GifImageView("gifMosquito")
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 190, height: 190)
                                    .offset(CGSize(width: 0, height: 120.0))
                                    .onTapGesture {
                                        mata = true
                                    }
                            }else {
                                Image("morto")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 250, height: 250)
                                    .offset(CGSize(width: 0, height: 120.0))
                                
                            }
                        }//zstack inner
                        .frame(height: 200)
                    }//vstack cima
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack {
                        VStack{}.padding(25)//espaço entre o gif e as notícias
                        VStack{
                            if let randomNoticia = noticias.randomElement(){
                                Text("\(randomNoticia.titulo)").font(.title).padding().foregroundColor(.white)
                                Text("\(randomNoticia.texto)").foregroundColor(.white)
                            }//if
                        }//vstack das noticias somente
                        .padding()
                        .frame(width: 350)
                        .background(Color(.azulCinza))
                        .cornerRadius(15)
                        //inicio das sheetviews
                        HStack{
                            Button {
                                showingSheet1.toggle()
                            } label: {
                                Label("SINTOMAS", systemImage: "drop.fill")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.white)
                                
                            }
                            .sheet(isPresented: $showingSheet1) {
                                Sintomas()
                            }.frame(width: 100, height: 80)
                                .background(.azulCinza)
                                .cornerRadius(10)
                            Spacer()
                            
                            Button {
                                showingSheet2.toggle()
                            } label: {
                                Label("MEDICAMENTOS", systemImage: "cross.vial.fill")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.white)
                                
                            }
                            .sheet(isPresented: $showingSheet2) {
                                Medicamentos()
                            }.frame(width: 120, height: 80)
                                .background(.azulCinza)
                                .cornerRadius(10)
                            Spacer()
                            
                            Button {
                                showingSheet3.toggle()
                            } label: {
                                Label("ESTATISTICA", systemImage: "chart.line.uptrend.xyaxis")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.white)
                            }
                            .sheet(isPresented: $showingSheet3) {
                                SheetView()
                            }.frame(width: 100, height: 80)
                                .background(.azulCinza)
                                .cornerRadius(10)
                        }.padding()
                        //termino das sheet views
                        
                    }//vstack baixo
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background().edgesIgnoringSafeArea(.bottom)
                    
                }//vstackmain
            }//zstack
        }//navstack
    }
}

#Preview {
    InicioView()
}
