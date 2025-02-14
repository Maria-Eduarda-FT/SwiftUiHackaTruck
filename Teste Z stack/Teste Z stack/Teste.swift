//
//  Teste.swift
//  Teste Z stack
//
//  Created by Turma01-21 on 07/02/25.
//

import SwiftUI

struct Teste: View {
    
    @State private var name = " "
    
    var body: some View {
        TextField(text: $name, prompt: Text("Required")) {
            Text("Username")
        }
    }
}

#Preview {
    Teste()
}
