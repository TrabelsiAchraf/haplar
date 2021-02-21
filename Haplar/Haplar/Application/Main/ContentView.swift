//
//  ContentView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            AddDrugView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
