//
//  ContentView.swift
//  MoonShoot
//
//  Created by Denys Nazymok on 25.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isToggle = false
    
    var body: some View {
        NavigationView {
            Group {
                if isToggle {
                    ListView(isToggle: $isToggle)
                } else {
                    GridView(isToggle: $isToggle)
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("MoonShoot")
            
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
