//
//  CrewScrollView.swift
//  Moonshot
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct CrewScrollView: View {
    
    let crew: [MissionView.CrewMember] // the data swift view needs 
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        Image(crewMember.astronaut.id)
                            .resizable()
                            .frame(width: 104, height: 72)
                            .clipShape(.capsule)
                            .overlay(
                                Capsule()
                                    .strokeBorder(.white, lineWidth: 1)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(crewMember.astronaut.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                            if crewMember.role == "Commander" {
                                Text(crewMember.role)
                                    .foregroundStyle(.red)
                            } else {
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                }
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let crew = missions[7].crew.map { member in
        MissionView.CrewMember(role: member.role,
                               astronaut: astronauts[member.name]!)
    }
    
    return CrewScrollView(crew: crew)
        
}
