//
//  RegionView.swift
//  Challenge08Mapotavio
//
//  Created by Student11 on 27/01/23.
//

import SwiftUI
import MapKit

struct RegionView: View {
    
    @State var local: String
    @State var coordinate: CLLocationCoordinate2D
    @State var regions: [Regions]
    
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -10.303451, longitude: -48.333678),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.0)
    )
    //CLLocationCoordinate2D(latitude: -10.303451, longitude: -48.139037)
    func plotMap(){
        self.mapRegion = MKCoordinateRegion(
            center: self.coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.0)
        )
    }
    
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: regions){ region in
            MapMarker(coordinate: region.coordinate)
        }
            .onAppear(){
                self.plotMap()
            }
    }
}

struct RegionView_Previews: PreviewProvider {
    static var previews: some View {
        RegionView(local: "Texte", coordinate: CLLocationCoordinate2D(latitude: -10.184554, longitude: -48.333678), regions:[])
    }
}
