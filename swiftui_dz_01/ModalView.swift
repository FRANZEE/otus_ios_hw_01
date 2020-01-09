//
//  ModalView.swift
//  swiftui_dz_01
//
//  Created by ash on 09.01.2020.
//  Copyright © 2020 ash. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            Text("Inside Modal View")
                .padding()
            // 2.
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true))
    }
}
