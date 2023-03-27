//
//  ListView.swift
//  MoonShoot
//
//  Created by Denys Nazymok on 27.03.2023.
//

import SwiftUI

struct ListView: View {
    let dataController = DataController()
    @Binding var isToggle: Bool
        
        var body: some View {
            List {
                    ForEach(dataController.missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: dataController.astronauts)
                        } label: {
                            VStack {
                                Image("\(mission.image)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                        }
                    }
                }
                .toolbar {
                    Button {
                        withAnimation {
                            isToggle.toggle()
                        }
                    } label: {
                        
                        Image(systemName: "rectangle.grid.2x2")
                    }
                }
            }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
