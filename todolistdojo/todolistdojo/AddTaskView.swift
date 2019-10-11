//
//  AddTask.swift
//  todolistdojo
//
//  Created by Lucas Cardoso on 10/10/19.
//  Copyright © 2019 Lucas Cardoso. All rights reserved.
//

import SwiftUI

struct AddTaskView: View {
    @State var searchText = ""
    @Binding var atividades: [Atividade]
    
    var body: some View {
        VStack {
            TextField("Título", text: $searchText)
            HStack {
                Spacer()
                Button("Add"){
                    self.atividades.append(Atividade(done: false, title: self.searchText))
                    self.searchText = ""
//                    NavigationLink(destination: ContentView(atividades: self.atividades)) {
//                        Text("Add")
//                    }
                }
                .padding()
            }
        }
    }
}

//struct AddTask_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskView()
//    }
//}
