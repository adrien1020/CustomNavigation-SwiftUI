//
//  HomeOfficeView.swift
//  CustomNavigation
//
//  Created by Adrien Surugue on 23/08/2024.
//

import SwiftUI
import MapKit

struct HomeOfficeView: View {
    
    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.33947942458981, longitude: 5.148591186612293),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        ))

    var body: some View {
        VStack{
            HStack(){
                Group{
                    Text("Do you use a home \n office at ")
                        .font(.largeTitle)
                        .fontWeight(.bold) +
                    Text("Dijon")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray.opacity(0.5)) +
                    Text("?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                Spacer()
            }
            .padding()
            Map(position: $cameraPosition)
                        .frame(height: 300)
                        .cornerRadius(20)
                        .padding()
            Spacer()
        }
    }
}

#Preview {
    HomeOfficeView()
}
