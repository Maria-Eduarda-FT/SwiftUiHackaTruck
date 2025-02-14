//
//  Teste.swift
//  Instagram
//
//  Created by Turma01-21 on 07/02/25.
//

import SwiftUI

struct Teste: View {
    var body: some View {
        HStack{
            VStack{
                
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .background(Color.black)
            
            VStack{
                
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .background(Color.red)
                .padding(.leading, -10)
        }
    }
}

#Preview {
    Teste()
}
