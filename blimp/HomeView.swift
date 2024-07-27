
//
//  ContentView.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("userPing") private var user_ping_data = ""
    @AppStorage("userx") private var userx = ""
    @AppStorage("passx") private var passx = ""
    
    @State private var searchText = ""
    @State private var isSearching = false
    
    private static let initialColumns = 3
    
    @State private var selectedMenu: Menu?
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.adaptive(minimum: 160), spacing: 10,alignment: .top), count: initialColumns)
    @State private var companyName: String = "Blimp"
    
    private var gridRows: [GridItem] = [
        GridItem(.fixed(150), spacing: 10, alignment: .leading)
    ]
    
    
    @State private var menus: [Menu] = [
        Menu( name: "A", logo: "bag.circle", label: "A", category: "A", obj: "A"),
        Menu( name: "B", logo: "bag.circle", label: "B", category: "A", obj: "A"),
        Menu( name: "C", logo: "bag.circle", label: "C", category: "A", obj: "A"),
        Menu( name: "D", logo: "bag.circle", label: "D", category: "A", obj: "A"),
        Menu( name: "E", logo: "bag.circle", label: "E", category: "A", obj: "A"),
        Menu( name: "F", logo: "bag.circle", label: "F", category: "A", obj: "A"),
        Menu( name: "G", logo: "bag.circle", label: "G", category: "A", obj: "A"),
        Menu( name: "H", logo: "bag.circle", label: "H", category: "A", obj: "A"),
        Menu( name: "I", logo: "bag.circle", label: "I", category: "A", obj: "A"),
    ]
    
    @State private var store_summaries = [
        StoreSummary(store_code: "ST001", store_name: "Video #1", store_omset: 0),
        StoreSummary(store_code: "ST001", store_name: "Video #2", store_omset: 0)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: gridRows) {
                            ForEach(store_summaries) { store in
    
                                HStack {
    
                                    Image(systemName: "bag.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .padding()
    
                                    VStack(alignment: .leading) {
                                        Text(store.store_name)
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size: 32))
                                            .frame(width: 100, alignment: .leading)
    
                                    }
                                    .padding(0)
                                    
                                }
                                .padding(0)
                                .background(Color.accentColor.opacity(0.1))
                                .cornerRadius(8)
                                .frame(height:150)
    
                            }
                        }
                    }
                }
                .padding(0)
                .frame(height: 150)
                
                
                ScrollView {
                    LazyVGrid(columns: gridColumns) {
                        
                            ForEach (menus) { menu in
                                
                                
                                    VStack(alignment: .leading) {
                                        ZStack(alignment: .top) {
                                            Image(systemName: menu.logo)
                                                .resizable()
                                                .scaledToFit()
                                                .symbolRenderingMode(.hierarchical)
                                                .ignoresSafeArea(.container, edges: .bottom)
                                                .cornerRadius(8)
                                                .frame(width: UIScreen.main.bounds.size.width/5,
                                                       height: UIScreen.main.bounds.size.width/5
                                                )
                                        }
                                        Text(menu.name)
                                    }
                                
                                
                            }
                    }
                }
            }
            .padding()
            .navigationTitle(self.companyName)
            .toolbar() {
                             
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        TextField("Search...", text: $searchText)
                            .frame(minWidth: UIScreen.main.bounds.size.width-130, maxWidth: .infinity, minHeight: 40)
                        
                        NavigationLink("",destination: SearchView(), isActive: $isSearching)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("search")
                        isSearching = true
                        
                    } label : {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
