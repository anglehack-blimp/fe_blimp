//
//  ProfileView.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("userPing") private var user_ping_data = ""
    @AppStorage("userx") private var userx = ""
    @AppStorage("passx") private var passx = ""
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(maxWidth: 100)
                    
                    HStack {
                        
                        
                        VStack {
                            Text("User A")
                                .font(.largeTitle)
                            Text("Toko Kita")
                                .font(.caption)
                         
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(16)
                    
                    
                    Button {
                        //logout screen
                        
                        
                        //remove information
                        user_ping_data = ""
                        userx = ""
                        passx = ""
                        
                        print("User ping data : \(user_ping_data)")
                    } label: {
                        Text("Logout")
                    }
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(colors: [.gray, .gray], startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(20)
                    .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
