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
            HStack {
                ForEach(viewModel.days) { day in
                    GeometryReader { geo in
                        HLDayView(date: day.date, isSelected: day.isSelected)
                            .frame(width: geo.size.width, height: geo.size.height)
                            .onTapGesture {
                                selectedDate = day.date.dayFullFormat
                                viewModel.selectDay(day.date)
                            }
                    }
                }
            }
            .padding(.horizontal)
            Text(selectedDate)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
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
