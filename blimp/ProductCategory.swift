//
//  ProductCategory.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct ProductCategory: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var logo: String
    var label: String
    var obj: String
}

