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
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0...days.count, id: \.self) { day in
                            HLDayView(date: Date())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 25)
                }
                Text("Today, 24 Dec")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.accentColor)
                Spacer()
                //                Circle()
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
            .navigationBarTitle(Text("HOME_NAVBAR"))
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
