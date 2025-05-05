//
//  TabView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/2/25.
//

import SwiftUI

struct MyTabView: View {
    init() {
   // UITabBar.appearance().backgroundColor = UIColor.white
      //  UITabBar.appearance().barTintColor = UIColor.green
    }
    var body: some View {
        TabView{
            ContentView(location: loc0000)
                       .tabItem {
                           Label("Campus", systemImage: "house.fill")
                               .background(Color.white)
                       }
            AchievementView()
                        .tabItem {
                    Label("Achievements", systemImage: "trophy.fill")
                                .background(Color.white)
                    
                }
            ArtistView()
                       .tabItem {
                           Label("Team", systemImage: "person.fill")
                               .background(Color.white)
                       }
            
            MapView()
                       .tabItem {
                           Label("Map", systemImage: "map.fill")
                               .background(Color.white)
                       }
//            ScanView()
//                       .tabItem {
//                           Label("Developers", systemImage: "pencil")
//                               .background(Color.white)
//                       }
               }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MyTabView()
}
