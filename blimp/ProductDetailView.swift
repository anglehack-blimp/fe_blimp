//
//  ProductDetailView.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @State private var validationText = ""
    @State private var isInvalidated = false
    @State private var isShowingAddDetail = false
    @State var isShowAlertSave: Bool = false
    @State private var generalResponse: GeneralResponse = GeneralResponse(rc: "", message: "")
    
    @State var product_name: String = ""
    @State var product_desc: String = ""
    @State var product_image: String = ""
    @State var product_video: String = ""
    @State var product_price: String = ""
    @State var product_qty: String = ""
    
    var body: some View {
        List {
            Section(header: Text("Product Information")) {
                
                Text("Product Name")
                TextField("Product Name", text: $product_name, prompt: Text("ex. Honda CRV 2015"))
                
                Text("Product Description")
                TextField("Product Description", text: $product_desc, prompt: Text("ex. Kendaraan Roda 4"))
                
                Text("Product Image")
                TextField("Product Image", text: $product_image, prompt: Text("ex. IMG.png"))
                
                Text("Product Video")
                TextField("Product Video", text: $product_video, prompt: Text("ex. video.mp4"))
                
                Text("Product Price")
                TextField("Product Price", text: $product_price, prompt: Text("ex. 10.000.000"))
                
                Text("Product Qty")
                TextField("Product Qty", text: $product_qty, prompt: Text("ex. 99"))
                
            }
            
            Button {
                guard (!product_name.isEmpty) else {
                    validationText = "Product Name is Empty !\n"
                    isInvalidated = true
                    isShowAlertSave = true
                    generalResponse = GeneralResponse(rc: "05", message: validationText)
                    return
                }
                
                Task {
                    
                }
                
            } label: {
                Text("Save Data")
            }
        }
    }
}
