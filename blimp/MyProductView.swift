//
//  MyProduct.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI


struct MyProductView: View {
    
    private static let initialColumns = 2
    
    @State private var gridColumns = Array(repeating: GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .top), count: initialColumns)
    
    @State private var products: [Product] = [
        Product( name: "Gitar Fender", logo: "bag.circle", label: "Gitar Fender", category: "Gitar", obj: "A"),
        Product( name: "Kursi", logo: "bag.circle", label: "Kursi", category: "Furniture", obj: "A"),
        Product( name: "Sepatu Nike", logo: "bag.circle", label: "Sepatu Nike", category: "Sepatu", obj: "A"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    
                    ScrollView {
                        LazyVGrid(columns: gridColumns) {
                            
                                ForEach (products) { product in
                                    
                                    NavigationLink(destination: ProductAr()) {
                                        VStack(alignment: .leading) {
                                            ZStack(alignment: .top) {
                                                Image(systemName: product.logo)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .symbolRenderingMode(.hierarchical)
                                                    .ignoresSafeArea(.container, edges: .bottom)
                                                    .cornerRadius(8)
                                                    .frame(width: UIScreen.main.bounds.size.width/5,
                                                           height: UIScreen.main.bounds.size.width/5
                                                    )
                                            }
                                            Text(product.name)
                                        }
                                    }
                                }
                        }
                    }
                }
            }.navigationTitle("My Products")
        }
    }
    
}
