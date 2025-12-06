//
//  MissionGridView.swift
//  Moonshot
//
//  Created by Marc Moxey on 12/5/25.
//

import SwiftUI

struct MissionGridView: View {
    
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    
    var body: some View {
        
       
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(
                                mission: mission,
                                astronauts: astronauts
                            )
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLauchDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                        }
                    
                    }
                }
                .clipShape(.rect(cornerRadius:10))
                .overlay( RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground))
            }
            .background(.darkBackground)
            .preferredColorScheme(ColorScheme.dark)
     
        
    }
}


#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    MissionGridView(astronauts: astronauts, missions: missions)
}
