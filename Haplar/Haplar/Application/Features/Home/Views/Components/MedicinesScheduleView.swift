//
//  MedicinesScheduleView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 10/03/2021.
//

import SwiftUI

struct MedicinesScheduleView: View {
    var body: some View {
        HStack {
            Image("icon_pills")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 15) {
                Text("Arnabite")
                    .font(.title)
                    .fontWeight(.bold)
                HStack() {
                    Text("Next :")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("19:30h")
                        .font(.body)
                        .fontWeight(.medium)
                }
                VStack(alignment: .leading) {
                    HStack() {
                        Text("Left :")
                            .font(.body)
                            .fontWeight(.bold)
                        Text("15/20 units")
                            .font(.body)
                            .fontWeight(.medium)
                        Capsule(style: .circular)
                            .frame(width: 50, height: 10)
                            .foregroundColor(.red)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct MedicinesScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        MedicinesScheduleView()
            .previewLayout(.sizeThatFits)
            .padding()
        MedicinesScheduleView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
