//
//  ContentView.swift
//  Challenge08Mapotavio
//
//  Created by Student11 on 27/01/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var regions = [Regions]()
    
    
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -10.184554, longitude: -48.333678),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.0)
    )
    
    var body: some View {
//        Map(coordinateRegion: $mapRegion, annotationItems: regions){ region in
//            MapMarker(coordinate: region.coordinate)
//        }
            
        NavigationView {
            VStack{
                Map(coordinateRegion: $mapRegion)
                List(regions){ region in
                    NavigationLink(destination: RegionView(
                        local: region.local,
                        coordinate: region.coordinate,
                        regions: regions
                    )){
                        Text(region.local)
                    }
                }
            }
        }
        .onAppear(){
            Api().getData { regions in
                self.regions = regions
                print(self.regions)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
