//
//  ArchiveView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct ArchiveView: View {
    
    var colors = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]
    @State private var pick1 = "0"
    @State private var pick2 = "0"
    @State private var pick3 = "0"
    @Binding var isPresented: Bool
    @Environment(\.dismiss) var dismiss
    
    //   @State var currentRandom = randoLocations.randomElement()!
    @State var showArchive = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("jhallArchive")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                VStack{
                    Text("Welcome to the Archive")
                        .font(.system(size: 32))
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top: 40, leading: 15, bottom: 0, trailing: 15 ))
                        .bold()
                    Text("The Archive is availbe to Campus residents. Please enter a location code to access the archive")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top: 20, leading: 15, bottom: 20, trailing: 15 ))
                    Text("Warning")
                        .font(.system(size: 28))
                        .bold()
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 3, trailing: 15 ))
                    Text("Archive contents can contain unstable and disruptive data. Proceese with caution!")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top: 2, leading: 15, bottom: 40, trailing: 15 ))
                    Spacer()
                    Text("Enter Access Code")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top: 2, leading: 15, bottom: 40, trailing: 15 ))
                    
                    VStack {
                        HStack{
                            Picker("Please choose a color", selection: $pick1) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }.pickerStyle(.wheel)
                                .background(Color.white)
                            
                            Picker("Please choose a color", selection: $pick2) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }.pickerStyle(.wheel)
                                .background(Color.white)
                            Picker("Please choose a color", selection: $pick3) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }.pickerStyle(.wheel)
                                .background(Color.white)
                            
                        }.background(Color.white)
                        NavigationLink {
                            ArchiveRandoRoom(room: rando2)
                        } label: {
                            Text("Open Destination")
                                .background(Color.white)
                        }
                        Button {
                            isPresented = false
                        } label: {
                            Text("Back to Jerimah Hall")
                                .background(Color.white)
                        }
                        
                        Button {
                            dismiss()
                        } label: {
                            Text("Dismiss")
                        }

                        
                        Spacer()
                    }
                    .onAppear{
                        playSound(sound: "archiveMusic", type: "mp3")
                        //  currentRandom = randoLocations.randomElement()!
                    }.navigationBarBackButtonHidden(true)
                    
                    
                    
                }
            }
        }
    }
}

//#Preview {
//    ArchiveView()
//}


struct archiveRandoRoom{
    var image: String
    var sound: String
    var text: String
}
var randoLocations: [archiveRandoRoom] = [jlmLiminal, rando2, rando1] //jlmLiminal is superior guys, trust :3


var rando2 = archiveRandoRoom(image: "mk_liminal", sound: "crowd1", text: "blabvlaaksdasdasdad")

var rando1 = archiveRandoRoom(image: "liminal1", sound: "limimal1", text: "# The Mr. Crunch In a small apartment on the edge of town lived Mr. Crunch, a man with the most unusual eating habits anyone had ever encountered. While most people enjoyed traditional soups made of chicken, vegetables, and noodles, Mr. Crunch preferred what he called his Industrial Stew. Every Sunday morning, he would drag his large cast-iron pot to the local junkyard, where he would carefully select the day's ingredients. A rusty bicycle gear adds a nice metallic tang, he would often say, dropping it into his basket alongside a handful of carrots for vitamins. His neighbors would watch in amazement as he lugged home toy cars, plastic soldiers, and the occasional hubcap, all while clutching a bag of fresh vegetables from the market. Got to keep it balanced, he'd explain with a wink. Can't forget your greens, even when you're eating chrome.Mr. Crunch's special recipe included:- Three Hot Wheels cars (preferably vintage for the richer flavor)- One rubber duck (for subtle notes of plastic)- A handful of Lego bricks (multicolored for presentation)- Two cups of broccoli (for nutrition)- One carrot (julienned)- A pinch of motor oil (for seasoning)Despite concerned looks from his doctor, Mr. Crunch insisted his unusual diet kept him running like a well-oiled machine. The local dentist, however, had never seen such perfectly polished teeth - apparently, all that metal had an unexpected benefit.To this day, you can hear the distinctive crunching sound coming from his apartment every Sunday evening, followed by the satisfied sighs of a man enjoying his very own brand of comfort food.")



var jlmLiminal = archiveRandoRoom(image: "jmLiminalSpace", sound: "liminal1", text: "Il fait sombre et froid dans cet espace si… liminal? Le seul bruit est celui du vent lointain qui souffle sur ton visage. Où suis-je? Suis-je piégé? Est-ce le vide?")

