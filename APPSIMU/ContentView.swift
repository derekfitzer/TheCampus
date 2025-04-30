//
//  ContentView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    //var location: location
    @State var locAlert = false
    @State var location = locations[0]
    @State var hide = false
    var body: some View {
        ZStack {
            Image(location.image)
                .resizable()
             //   .aspectRatio(contentMode: hide ? .fill : .fit)
                .ignoresSafeArea()
            VStack{
               
                Text(location.locationName)
                    .bold()
                    .font(.system(size: 40))
                    .opacity(hide ? 0 : 1)
                    .foregroundStyle(Color.white)
             
                
                if location.textBlocks != nil && location.textBlocks!.count > 0  {
                    Text((location.textBlocks?[0])!)
                        .padding()
                        .background(Color.white)
                        .opacity(hide ? 0 : 1)
                        .cornerRadius(10)
                }
                
                Spacer()
//                Image(location.imageMain)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(10)
//                    .opacity(hide ? 0 : 1)
                
//                List(location.destinations) {
//                    dest in
//                    Button {
//                       // let pickString = dest.link
//                        location = locations[dest.link]
//                    } label: {
//                        Text(dest.myText)
//                    }
//                    .cornerRadius(10)
//                }

                List(location.destinations) {
                    dest in
                    Button {
                        if let a = seachLoc(location: dest.link, locations: locations) {
                            location = locations[a]
                        } else {
                            locAlert = true
                        }
                        
//                        location = locations[dest.link]
                    } label: {
                        Text(dest.myText)
                    }
                    .cornerRadius(10)
                }
                .listRowBackground(Color.clear)
                .scrollContentBackground(.hidden)
                .opacity(hide ? 0 : 1)
                Button {
                    hide.toggle()
                    playSound(sound: "crowd1", type: "mp3")
                } label: {
                    Text("hide")
                }
                .alert(isPresented: $locAlert) {
                    Alert(title: Text("Location Error"), message: Text(String(msg404.randomElement() ?? ":-)")), dismissButton: .default(Text("Continue")))
                        }
               
                
                NavigationLink("rando", destination: ArchiveView())



            }
            .padding()
        }
        .onAppear{
            // this is not working
            if location.sound != nil {
                print("loaded")
              //  playSound(sound: location.sound!, type: "mp3")
                playSound(sound: "crowd1", type: "mp3")
            }
            
        }.navigationBarBackButtonHidden(true)
    }
      
}

func seachLoc(location: Int, locations: [location]) -> Int? {
  //  return locations.firstIndex(where: $0.mapID == location)
    return locations.firstIndex { $0.mapID == location }
}

    
#Preview {
    ContentView()
}
