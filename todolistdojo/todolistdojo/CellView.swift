//
//  CellView.swift
//  todolistdojo
//
//  Created by Lucas Cardoso on 10/10/19.
//  Copyright © 2019 Lucas Cardoso. All rights reserved.
//

import SwiftUI

struct CellView: View,Identifiable {
    var id = UUID()
    @State var isSelected: Bool = false
    var name: String = ""
    var body: some View {
        HStack {
            Toggle(isOn: $isSelected) {
                Text(name)
            }
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
