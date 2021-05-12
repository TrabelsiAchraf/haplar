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
            HomeView(viewModel: HomeViewModel())
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("TABBAR_HOME")
                }
            AddDrugView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("TABBAR_ADD")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("TABBAR_SETTINGS")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
