//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Hamza on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
