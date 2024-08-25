//
//  VehicleView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 23/08/2024.
//

import SwiftUI

struct VehicleView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Do you use a car for\nyour freelance work?")
                    .lineLimit(2)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            ZStack{
                Rectangle()
                    .foregroundColor(.gray.opacity(0.2))
                Image("3d-business-white-car-turn-left")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            .cornerRadius(20)
            .padding()
            .frame(height: 300)
            Spacer()
        }
    }
}

#Preview {
    VehicleView()
}
