//
//  RandoRoom.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct ArchiveRandoRoom: View {
    @State var room: archiveRandoRoom
    
        var body: some View {
        ZStack{
            Image(room.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .foregroundStyle(Color.white)
            ScrollView{
                

                Text(room.text)
            }
        }.onAppear{
            playSound(sound: room.sound, type: "mp3")
        }
        
    }
}

//#Preview {
//    RandoRoom(room: rando2)
//}
