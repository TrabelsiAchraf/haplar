//
//  HLDaysListView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/03/2021.
//

import SwiftUI

struct HLDaysListView: View {
    @ObservedObject var viewModel: HomeViewModel
    @State private var selectedDate: String = ""
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.days) { day in
                        HLDayView(date: day.date, isSelected: day.isSelected)
                            .onTapGesture {
                                selectedDate = day.date.dayFullFormat
                                viewModel.selectDay(day.date)
                            }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 25)
            }
            Text(selectedDate)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.accentColor)
                .padding(.top, 10)
        }
        .onAppear {
            selectedDate = Date().dayFullFormat
        }
    }
}

struct HLDaysListView_Previews: PreviewProvider {
    static var previews: some View {
        HLDaysListView(viewModel: HomeViewModel(forPreview: true))
            .previewLayout(.sizeThatFits)
            .padding()
        HLDaysListView(viewModel: HomeViewModel(forPreview: true))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
