//
//  ReviewView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 23/08/2024.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Here's a quick recap,\nare we set?")
                    .lineLimit(2)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            ZStack{
                Rectangle()
                    .foregroundColor(.gray.opacity(0.2))
                VStack(alignment:.leading, spacing: 20){
                    Image("3d-business-young-woman-and-man-sitting-at-a-table-with-a-laptop")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 130)
                    Group{
                        Text("You're ")
                            .foregroundColor(.gray.opacity(0.9)) +
                        Text("married ") +
                        Text("and use your ")
                            .foregroundColor(.gray.opacity(0.9)) +
                        Text("vehicle\n ") +
                        Text("2 times a week ") +
                        Text("for work.")
                            .foregroundStyle(.gray.opacity(0.9))
                    }
                    .bold()
                }
                .padding()
            }
            .cornerRadius(20)
            .frame(height: 250)
            .padding()
            Spacer()
        }
    }
}
#Preview {
    ReviewView()
}
