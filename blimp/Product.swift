//
//  Product.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct Product: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var logo: String
    var label: String
    var category: String
    var obj: String
}

