//
//  HomeHomeShimmerView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 12/03/2021.
//

import SwiftUI

struct HomeShimmerView: View {
    
    public var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HStack {
                    ForEach(0..<7) { _ in
                        ShimmerView()
                            .frame(width: 30, height: 60)
                            .padding(.horizontal, 5)
                    }
                }.padding(.bottom, 50)
                Group {
                    ForEach(0..<3)  {  _ in
                        ShimmerView()
                            .frame(height: 120)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                    }
                }
            }
            .navigationBarItems(
                trailing:
                    HStack {
                        Image(systemName: "bell.badge.fill")
                            .font(.largeTitle)
                            .foregroundColor(.hlPurple)
                    }
            )
            .navigationBarTitle(Text("HOME_NAVBAR"))
        }
    }
}

struct HomeShimmerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShimmerView()
            .padding()
    }
}
