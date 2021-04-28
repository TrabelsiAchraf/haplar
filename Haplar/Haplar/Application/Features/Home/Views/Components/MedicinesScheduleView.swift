//
//  MedicinesScheduleView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 10/03/2021.
//

import SwiftUI

struct MedicinesScheduleView: View {
    let medicinesSchedule: MedicineShcedule
    @State private var gaugeStatusColor: Color = .clear
    var body: some View {
        HStack {
            medicinesSchedule.icon
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 15) {
                Text(medicinesSchedule.name)
                    .font(.title)
                    .fontWeight(.bold)
                HStack() {
                    Text("HOME_MEDICINE_SHCEDULE_NEXT")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("19:30h")
                        .font(.body)
                        .fontWeight(.medium)
                }
                VStack(alignment: .leading) {
                    HStack() {
                        Text("HOME_MEDICINE_SHCEDULE_LEFT")
                            .font(.body)
                            .fontWeight(.bold)
                        Text(medicinesSchedule.leftUnit)
                            .font(.body)
                            .fontWeight(.medium)
                            .fixedSize()
                        Capsule(style: .circular)
                            .stroke(Color.blue, lineWidth: 2)
                            .frame(width: 50, height: 10)
<<<<<<< HEAD
=======
                            .foregroundColor(gaugeStatusColor)
                    }.onAppear {
                        switch medicinesSchedule.leftUnitStatus {
                        case .confortable:
                            gaugeStatusColor = .hlPink
                        case .risk:
                            gaugeStatusColor = .hlOrange
                        case .normal:
                            gaugeStatusColor = .hlPurple
                        case .problem:
                            gaugeStatusColor = Color.gray.opacity(0.4)
                        }
>>>>>>> 96f50f4e4d2b25ef96344a99e80a938b79a9c780
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct MedicinesScheduleView_Previews: PreviewProvider {
    static let quantity = MedicineShcedule.Quanity(total: 20, left: 10)
    static let medicinesSchedule = MedicineShcedule(
        id: UUID(),
        icon: Image("icon_pills"),
        name: "Arnabite",
        quanity: quantity
    )
    static var previews: some View {
        MedicinesScheduleView(medicinesSchedule: medicinesSchedule)
            .previewLayout(.sizeThatFits)
            .padding()
        MedicinesScheduleView(medicinesSchedule: medicinesSchedule)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
