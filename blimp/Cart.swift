//
//  Cart.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct Cart: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var qty: Int
    var productId: Int
    var price: Int
}
