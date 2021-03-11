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
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    HLDaysListView(viewModel: viewModel)
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.3)
                    EmptyMedicinesScheduleView()
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.8)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.hlGray1, Color.hlGray2]), startPoint: .bottomTrailing, endPoint: .topLeading))
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
