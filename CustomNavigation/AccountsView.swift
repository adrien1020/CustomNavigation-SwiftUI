//
//  AccountsView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 23/08/2024.
//

import SwiftUI

struct AccountsView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Would you like to link\nany bank accounts?")
                    .lineLimit(2)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            List {
                Section("Connect with"){
                    HStack{
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(red: 0.85, green: 0.7, blue: 0.8))
                                .cornerRadius(10)
                            Image(systemName: "apple.logo")
                                .foregroundColor(Color.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        }
                        Text("Apple Card")
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .bold()
                    }
                    .listRowSeparator(.hidden)
                    .padding(.horizontal)
                    .padding(.top, 10)
                    HStack{
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                            Image(systemName: "lightspectrum.horizontal")
                                .foregroundColor(Color.white)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                        }
                        Text("Plaid")
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .bold()
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    AccountsView()
}
