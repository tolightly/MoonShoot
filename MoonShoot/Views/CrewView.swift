//
//  CrewView.swift
//  MoonShoot
//
//  Created by Denys Nazymok on 27.03.2023.
//

import SwiftUI

struct CrewView: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { member in
                    NavigationLink {
                        AstronautView(astronaut: member.astronaut)
                    } label: {
                        Image(member.astronaut.id)
                            .resizable()
                            .frame(width: 104, height: 72)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .strokeBorder(.white, lineWidth: 2)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(member.astronaut.name)
                                .font(.headline)
                                .foregroundColor(.white)
                            Text(member.role)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

//struct CrewView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        CrewView()
//    }
//}
