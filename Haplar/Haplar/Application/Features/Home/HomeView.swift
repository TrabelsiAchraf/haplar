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
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(0...days.count, id: \.self) { day in
                            HLDayView(date: Date())
                        }
                    }
                    .padding()
                }
                Circle()
            }
            .navigationBarItems(trailing:
                                    HStack {
                                        Button(action: {
                                            print("Hi !")
                                        }) {
                                            Image(systemName: "bell.badge.fill")
                                                .font(.largeTitle)
                                        }.foregroundColor(.hlPurple)
                                    })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text("Your Medicines"))
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
