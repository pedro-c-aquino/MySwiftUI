//
//  MapView.swift
//  MySwiftUI
//
//  Created by user208023 on 6/9/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ mapView: UIViewType, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: -23.5888, longitude: -46.658890)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
}
