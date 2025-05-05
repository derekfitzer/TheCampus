//
//  IntroView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/29/25.
//

import SwiftUI

struct IntroView: View {
    @State var alert = false
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("campusLogo")
                Text("Welcome to the Campus")
                    .bold()
                    .font(.system(size: 20))
                    .padding()
                Text("The Campus is a colaborative portfolio applicaion set in an virtualized community. Explore the campus and meet its creative and talented residents.")
                    .padding()
                NavigationLink {
                    
                    ContractView()
                } label: {
                    Text("Start the Simulation")
                }
                
         
                Spacer()
                Text("Created by App & Sim at the South-Western Career Academy")
                    .font(.system(size: 10))
                Text("Version 1.0.0")
                    .font(.system(size: 10))
            }
        }
    }
}
#Preview {
    IntroView()
}
