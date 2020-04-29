//
//  ContentView.swift
//  swiftui_dz_01
//
//  Created by ash on 17.12.2019.
//  Copyright © 2019 ash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal = false
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Button(action: {
                self.selection = 1
            }) {
               // 2.
               //self.showModal.toggle()
                Text("Show list item")
            // 3.
            }
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
            }.tag(0)

            NavigationView {
                List {
                    ForEach(0...9, id: \.self) { row in
                        NavigationLink(destination: DetailView()) {
                            Text("Show Detail View from \(row)")
                        }.navigationBarTitle("Navigation")
                    }
                }
            }.tabItem {
                Image(systemName: "2.square.fill")
                Text("Second")
            }.tag(1)
            
            Button("Show Modal") {
               // 2.
               self.showModal.toggle()
            // 3.
            }.sheet(isPresented: $showModal) {
                 ModalView(showModal: self.$showModal)
             }.tabItem {
                Image(systemName: "3.square.fill")
                Text("Third")
            }.tag(2)
                
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
