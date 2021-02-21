//
//  HomeView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 12/02/2021.
//

import SwiftUI

struct HomeView: View {
    
    struct HLDay: Identifiable {
        var id: UUID
        let date: Date
    }
    
    private let days: [HLDay] = Array(repeating: HLDay(id: UUID(), date: Date()), count: 7)
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0...days.count, id: \.self) { day in
                    HLDayView(date: Date())
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
