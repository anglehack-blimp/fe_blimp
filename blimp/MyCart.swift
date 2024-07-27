//
//  MyCart.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI


struct MyCart: View {
    
    @State private var cart: [Cart] = [
        Cart(name: "Gitar", qty: 1, productId: 1, price: 1000 ),
        Cart(name: "Sepatu", qty: 1, productId: 1, price: 1000 ),
        Cart(name: "Kursi", qty: 1, productId: 1, price: 1000 ),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(cart) { (c: Cart) in
                        VStack (alignment: .leading) {
                            Text(c.name)
                                .font(.caption)
                            Text(String(c.price))
                        }
                    }
                }
            }.navigationTitle("My Cart")
        }.padding(0)
    }
    
}
