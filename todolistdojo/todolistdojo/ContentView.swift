//
//  ContentView.swift
//  todolistdojo
//
//  Created by Lucas Cardoso on 10/10/19.
//  Copyright © 2019 Lucas Cardoso. All rights reserved.
//

import SwiftUI

struct Atividade: Identifiable {
    var id = UUID()
    var done: Bool
    var title: String = ""
}

struct ContentView: View {
    @State var isDone: Bool = false
    @State var atividades: [Atividade] = []
    @State var cell:[CellView] = [CellView(isSelected: false, name: "atividade")]
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(atividades.filter({!$0.done}), content:{
                        atividade in
                        CellView(id: atividade.id, isSelected: atividade.done, name: atividade.title)
                    })
                }
                .listStyle(GroupedListStyle())
            }
            .navigationBarTitle("To-do")
            .navigationBarItems(trailing:
                NavigationLink(destination: AddTaskView(searchText: "", atividades: $atividades),
                    label: {
                    Image(systemName: "plus")
                }))
        }
    }
//    func retornaCelula( title: String, state: Bool) {
//    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
