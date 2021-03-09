//
//  HomeView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 12/02/2021.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    var body: some View {
        NavigationView {
            VStack {
                HLDaysListView(viewModel: viewModel)
                Spacer()
            }
            .onAppear {
                viewModel.retrieveWeekDays()
            }
            .navigationBarItems(
                trailing:
                    HStack {
                        Button(action: {
                            print("Hi !")
                        }) {
                            Image(systemName: "bell.badge.fill")
                                .font(.largeTitle)
                        }
                        .foregroundColor(.hlPurple)
                    }
            )
            .navigationBarTitle(Text("HOME_NAVBAR"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(viewModel: HomeViewModel())
            HomeView(viewModel: HomeViewModel())
                .preferredColorScheme(.dark)
        }
    }
}
