//
//  ContentView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    //var location: location
    @State var locAlert = false // fire alert if a missing location is clicked
    @State var location = locations[0] // updated to display new locations defaults to 0
    @State var hide = false // toggle hide show ui - depreciated
    @State private var showLocation = false // Toggle to show the archive view
    @State var fullScreenDisplayed = false // controll .ignoreSafeArea - depreciated
   // @State private var presented = false // 
    @State var textIndex = 0 // step through text
    @State var portfolioIndex = 0 // step through images
    @State var showText = true // hide text - depreciated
    var body: some View {
        
        ZStack {
            // background image
            Image(location.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
//                .ignoresSafeArea()
            
            VStack{
                
                Text(location.locationName)
                    .bold()
                    .font(.system(size: 40))
                    .opacity(hide ? 0 : 1)
                    .foregroundStyle(Color.white)
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                
                // toggle images or text display
                
                if showText {
                    
                    
                    if location.textBlocks != nil && location.textBlocks!.count > 0  {
                        Text((location.textBlocks?[textIndex])!)
                            .padding()
                            .background(Color.white)
                            .opacity(hide ? 0 : 1)
                            .cornerRadius(10)
                        Button {
                            if textIndex < location.textBlocks!.count - 1 {
                                textIndex += 1
                            } else {
                                textIndex = 0
                            }
                        } label: {
                            
                            Image(systemName: "arrow.forward.circle")
                                .tint(Color.white)
                        }
                        
                    }
                } else {
                    if location.portfolioImages != nil && location.portfolioImages!.count > 0 {
                        Image(location.portfolioImages![portfolioIndex])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Button {
                            if portfolioIndex < location.portfolioImages!.count - 1 {
                                portfolioIndex += 1
                            } else {
                                textIndex = 0
                            }
                        } label: {
                            
                            Image(systemName: "arrow.forward.circle")
                                .tint(Color.white)
                        }
                    }
                }
                Button {
                    showText.toggle()
                    
                } label: {
                    if showText {
                        Text("Switch to Images")
                            
                    } else {
                        Text("Switch to Text")
                    }
                    
                    
                }.padding(EdgeInsets(top: 3, leading: 10, bottom: 3, trailing: 10))
                .background(Color.white)
                .opacity(location.portfolioImages != nil && location.portfolioImages!.count > 0 ? 1 : 0)
                    

              //  Spacer()

                
                
                List(location.destinations) {
                    dest in
                    Button {
                        if dest.link == 4 {
                            showLocation = true
                        } else {
                            if let a = seachLoc(location: dest.link, locations: locations) {
                                
                                location = locations[a]
                                
                            } else {
                                locAlert = true
                            }
                        }

                    } label: {
                        Text(dest.myText)
                    }
                    .cornerRadius(10)
                }
                .listRowBackground(Color.clear)
                .scrollContentBackground(.hidden)
                .opacity(hide ? 0 : 1)
//                Button {
//                    hide.toggle()
//                    playSound(sound: "crowd1", type: "mp3")
//                } label: {
//                    Text("hide")
//                }
                .alert(isPresented: $locAlert) {
                    Alert(title: Text("Location Error"), message: Text(String(msg404.randomElement() ?? ":-)")), dismissButton: .default(Text("Continue")))
                }
                
                
//                NavigationLink("rando", destination: ArchiveView( isPresented: $showLocation ))
            
            }
                
            }
            .sheet(isPresented: $showLocation){
                ArchiveView(isPresented: $showLocation)
                
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
