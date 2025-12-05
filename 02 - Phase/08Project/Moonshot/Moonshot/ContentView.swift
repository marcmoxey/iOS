//
//  ContentView.swift
//  Moonshot
//
//  Created by Marc Moxey on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        //Text(String(astronauts.count))
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            Text("Detail view")
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
                        .navigationTitle("Moonshot")
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
    
    
}

#Preview {
    ContentView()
}
