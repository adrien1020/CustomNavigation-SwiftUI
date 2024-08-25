//
//  ContentView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 19/08/2024.
//

import SwiftUI


struct ContentView: View {
    
    @State var currentTab: TabModel = .accounts
    @Namespace var animation
    
    var body: some View {
        GeometryReader{geo in
            VStack{
                HStack(spacing: 20){
                    Button(action: {
                    }, label: {
                        ZStack {
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 18, height: 18)
                        }
                    })
                    HStack{
                        ForEach(TabModel.allCases, id: \.rawValue) { tab in
                            Button {
                                withAnimation(){
                                    currentTab = tab
                                }
                            } label: {
                                HStack(spacing: 5){
                                    Image(systemName: tab.rawValue)
                                        .fontWeight(.semibold)
                                        .foregroundColor(currentTab == tab ? .black : .gray.opacity(0.8))
                                        .frame(width: 30, height: 30)
                                    if currentTab == tab {
                                        Text(tab.title)
                                            .font(.caption)
                                            .fontWeight(.semibold)
                                            .lineLimit(1)
                                            .foregroundColor(currentTab == tab ? .black : .gray)
                                    }
                                }
                                .clipShape(Rectangle())
                                .padding(.vertical, 4)
                                .padding(.horizontal, currentTab == tab ? 4 : 4)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(6)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .frame(maxWidth: geo.size.width-80)
                    .animation(.smooth(duration: 0.3, extraBounce: 0), value: currentTab)
                }
                TabView(selection: $currentTab,
                        content:  {
                    AccountsView().tag(TabModel.accounts)
                    HomeOfficeView().tag(TabModel.home)
                    VehicleView().tag(TabModel.car)
                    StatusView().tag(TabModel.marital)
                    ReviewView().tag(TabModel.review)
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
        }
    }
}

#Preview {
    ContentView()
}
