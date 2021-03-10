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
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .padding()
            VStack(alignment: .leading) {
                Text("Arnabite")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom)
                HStack {
                    Text("Next:")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("19:30h")
                        .font(.body)
                        .fontWeight(.medium)
                }
            }
            .padding()
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
