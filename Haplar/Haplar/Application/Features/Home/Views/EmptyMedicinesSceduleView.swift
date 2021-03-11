//
//  EmptyMedicinesSceduleView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/03/2021.
//

import SwiftUI

struct EmptyMedicinesSceduleView: View {
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        VStack {
            Image("icon_schedule")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.top)
            Text("HOME_EMPTY_SCEDULE_HEADER")
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.top)
                .padding(.bottom, 5)
            Text("HOME_EMPTY_SCEDULE_INFO")
                .font(.footnote)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .padding(.horizontal, 30)
                .foregroundColor(.gray)
            Button(action: {
                haptics.impactOccurred()
            }, label: {
                Text("HOME_EMPTY_SCEDULE_ADD_BUTTON_TITLE")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            })
        }
    }
}

struct EmptyMedicinesSceduleView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyMedicinesSceduleView()
            .previewLayout(.sizeThatFits)
            .padding()
        EmptyMedicinesSceduleView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
