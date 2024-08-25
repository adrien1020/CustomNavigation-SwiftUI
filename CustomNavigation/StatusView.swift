//
//  StatusView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 23/08/2024.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Are you going solo or\nsupporting others?")
                    .lineLimit(2)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.2))
                    VStack(alignment:.leading, spacing: 10){
                        Image("business-3d-businessman-in-love-showing-peace-sign")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 130)
                            .padding()
                        Text("Single")
                            .bold()
                        
                        Text("I am unmarried")
                            .font(.footnote)
                            .foregroundStyle(.gray.opacity(0.9))
                    }
                    .padding()
                }
                .cornerRadius(20)
                .frame(height: 250)
                ZStack{
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.2))
                    VStack(alignment:.leading, spacing: 10){
                        Image("3d-business-young-man-and-woman-looking-at-laptop-together")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 130)
                            .padding()
                        Text("Filling Jointly")
                            .bold()
                        
                        Text("I am Married")
                            .font(.footnote)
                            .foregroundStyle(.gray.opacity(0.9))
                    }
                    .padding()
                }
                .cornerRadius(20)
                .frame(height: 250)
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    StatusView()
}
