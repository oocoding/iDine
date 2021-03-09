//
//  ContentView.swift
//  iDine
//
//  Created by Zhang.xiangxiong on 2021/3/9.
//

import SwiftUI

struct ContentView: View {
    
    let menu:[MenuSection] = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) {
                            ItemRow(item: $0)
                        }
                    }
                }
            }
            .navigationTitle("Enum")
            .listStyle(GroupedListStyle())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
